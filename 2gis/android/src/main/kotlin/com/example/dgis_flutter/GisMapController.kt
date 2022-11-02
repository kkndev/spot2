package com.example.dgis_flutter

import android.graphics.BitmapFactory
import io.flutter.Log
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import ru.dgis.sdk.Context
import ru.dgis.sdk.Duration
import ru.dgis.sdk.coordinates.Bearing
import ru.dgis.sdk.coordinates.GeoPoint
import ru.dgis.sdk.coordinates.Latitude
import ru.dgis.sdk.coordinates.Longitude
import ru.dgis.sdk.geometry.GeoPointWithElevation
import ru.dgis.sdk.map.*
import ru.dgis.sdk.routing.*
import java.io.ByteArrayInputStream

class GisMapController(gv: MapView, ctx: Context) {

    private var gisView = gv
    private var sdkContext = ctx
    private var listIconObjects :  List<SimpleMapObject>? = null
    private var polylineObject :  SimpleMapObject? = null


    fun setCameraPosition(call: MethodCall, result: MethodChannel.Result) {
        val args: Map<String, Any?> = call.arguments as Map<String, Any?>
        val cameraPosition = CameraPosition(
            GeoPoint(
                latitude = Latitude(value = args["latitude"] as Double),
                longitude = Longitude(value = args["longitude"] as Double)
            ),
            zoom = Zoom(value = (args["zoom"] as Double).toFloat()),
            bearing = Bearing(value = args["bearing"] as Double),
            tilt = Tilt(value = (args["tilt"] as Double).toFloat())
        )
        gisView.getMapAsync { map ->
            map.camera.move(
                cameraPosition,
                Duration.ofMilliseconds((args["duration"] as Int).toLong()),
                CameraAnimationType.LINEAR
            )
                .onResult {
                    Log.d("APP", "Перелёт камеры завершён.")
                    result.success("OK")
                }
        }
    }

    fun getCameraPosition(result: MethodChannel.Result) {
        lateinit var cameraPosition: CameraPosition;
        gisView.getMapAsync { map ->
            cameraPosition = map.camera.position;
            val data = mapOf(
                "latitude" to cameraPosition.point.latitude.value,
                "longitude" to cameraPosition.point.longitude.value,
                "bearing" to cameraPosition.bearing.value,
                "tilt" to cameraPosition.tilt.value,
                "zoom" to cameraPosition.zoom.value,
            )
            result.success(data);
        }
    }

    fun updateMarkers(arguments: Any, mapObjectManager : MapObjectManager) {
        val args = arguments as Map<String, Any>;
        val markers = args["markers"] as List<Map<String, Any>>
        val objects: MutableList<SimpleMapObject> = ArrayList();
        for (i in markers) {
//            val arrayInputStream = ByteArrayInputStream(i["icon"] as ByteArray?)
//            val bitmap = BitmapFactory.decodeStream(arrayInputStream)
            val status = i["status"]

            var icon = imageFromResource(sdkContext, R.drawable.place_error)

            if (status == "occupied") {
                icon = imageFromResource(sdkContext, R.drawable.place_unavailable)
            } else if (status == "free"){
                icon = imageFromResource(sdkContext, R.drawable.place_available)
            } else if (status == "status"){
                icon = imageFromResource(sdkContext, R.drawable.pin_available)
            }

            val marker = Marker(
                MarkerOptions(
                    position = GeoPointWithElevation(
                        latitude = i["latitude"] as Double,
                        longitude = i["longitude"] as Double,
                    ),
                    icon = icon,
                    iconMapDirection= MapDirection(i["angle"] as Double),
                            zIndex = ZIndex(i["zIndex"] as Int),
                    userData = i["id"],
                    iconWidth = LogicalPixel(24.0f)
                )
            )
            objects.add(marker)
        }
        if(listIconObjects != null){
            mapObjectManager.removeObjects(listIconObjects!!)
        }
        mapObjectManager.addObjects(objects.toList());
        listIconObjects = objects.toList()

    }

    fun setPolyline(arguments: Any, mapObjectManager: MapObjectManager, result: MethodChannel.Result){
        val args = arguments as Map<String, Any>
        val p = args["points"] as List<Map<String, Any>>
        val points: MutableList<GeoPoint> = mutableListOf()
        for (element in p) {
            points.add(
                GeoPoint(
                    latitude = (element["latitude"] as Double),
                    longitude = (element["longitude"] as Double),
                )
            )
        }
        // Создание линии
        val polyline = Polyline(
            PolylineOptions(
                points = points,
                width = 4.lpx,
                color = Color(0, 0, 255)
            )
        )
        if(polylineObject != null){
            mapObjectManager.removeObject(polylineObject!!)
        }
        mapObjectManager.addObject(polyline)
        polylineObject = polyline
        result.success("OK")
    }

    fun removePolyline(mapObjectManager: MapObjectManager, result: MethodChannel.Result){
        if(polylineObject != null){
            mapObjectManager.removeObject(polylineObject!!)
        }
        result.success("OK")
    }
}

