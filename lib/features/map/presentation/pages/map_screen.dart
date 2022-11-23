import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:spot2/consts/app_images.dart';
import 'package:spot2/features/free_parking/presentation/bloc/free_parking/free_parking.dart';
import 'package:spot2/features/map/presentation/bloc/map/map_event.dart';
import 'package:spot2/features/user/presentation/bloc/user/user.dart';

import '../../../../core/presentation/components/circle_icon_button.dart';
import '../../../../extensions/extensions.dart';
import '../../../parking/presentation/bloc/parking/parking_bloc.dart';
import '../../../parking/presentation/bloc/parking/parking_event.dart';
import '../../../parking/presentation/bloc/parking/parking_state.dart';
import '../../../parking/presentation/widgets/filter_parking_modal.dart';
import '../bloc/map/map_bloc.dart';
import '../bloc/map/map_state.dart';
import '../widgets/bottom_tabs.dart';
import '../widgets/choose_home_parking_bottom_sheet.dart';
import '../widgets/free_parking.dart';
import '../widgets/parking_info_bottom_sheet.dart';

Future<Uint8List> loadMarkerImage(String imageName) async {
  var byteData = await rootBundle.load(imageName);
  return byteData.buffer.asUint8List();
}

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late MapboxMapController _mapController;

  @override
  void initState() {
    context.read<ParkingBloc>().add(GetParkingEvent());
    context.read<UserBloc>().add(WhoamiEvent());
    super.initState();
  }

  void _onFeatureTapped(a, b, c) {
    print(a);
    print(b);
    print(c);

  }

  void _onSymbolTapped(Symbol symbol) {
    print(symbol);

    var pressedParking = context
        .read<ParkingBloc>()
        .state
        .parkingList
        .firstWhere((element) =>
            element.longitude == symbol.options.geometry?.latitude);
    var freeParking = context.read<FreeParkingBloc>().state.freeParkingList;

    if (freeParking.isNotEmpty) {
      context
          .read<ParkingBloc>()
          .add(GetParkingItemEvent(parkingId: pressedParking.id));
      context.read<MapBloc>().add(
            SetBottomSheetEvent(
              bottomSheet: ParkingInfoBottomSheet(),
            ),
          );
    } else {
      context.read<MapBloc>().add(
            SetBottomSheetEvent(
              bottomSheet: ChooseHomeParkingBottomSheet(
                parking: pressedParking,
              ),
            ),
          );
    }
  }

  _toMyLocation() async {
    final location = Location();
    final hasPermissions = await location.hasPermission();
    if (hasPermissions != PermissionStatus.granted) {
      await location.requestPermission();
    }
    var locationCoords = await location.getLocation();
    _mapController.animateCamera(
      CameraUpdate.newLatLngZoom(
        LatLng(
          locationCoords.latitude ?? 0,
          locationCoords.longitude ?? 0,
        ),
        15,
      ),
    );
  }

  _updateParkingsOnMap(MapboxMapController controller, symbols) async {
    await controller.clearSymbols();

    await controller.removeSource('cars');
    await controller.removeLayer('cars2');

    await controller.addSymbols(
      symbols,
    );
  }

  _updateParkingPlacesOnMap(MapboxMapController controller, placesAvailable,placesUnavailable,placesError ) async {
    await controller.clearSymbols();
    await controller.removeSource('cars');
    await controller.removeLayer('cars2');

    await controller.addGeoJsonSource("placesAvailableSource", {
      "type": "FeatureCollection",
      "features": placesAvailable,
    });
    await controller.addGeoJsonSource("placesUnavailableSource", {
      "type": "FeatureCollection",
      "features": placesUnavailable,
    });
    await controller.addGeoJsonSource("placesErrorSource", {
      "type": "FeatureCollection",
      "features": placesError,
    });

    await controller.addSymbolLayer(
      'placesAvailableSource',
      'placesAvailableLayer',
      const SymbolLayerProperties(
        iconImage: 'placeAvailable',
        iconSize: ['interpolate', ['linear'], ['zoom'], 10, 0.75, 13, 0.6, 14, 0.5],
        iconAllowOverlap: true,
        iconRotationAlignment: 'map',
      ),
    );

    await controller.addSymbolLayer(
      'placesUnavailableSource',
      'placesUnavailableLayer',
      const SymbolLayerProperties(
        iconImage: 'placeUnavailable',
        iconSize: ['interpolate', ['linear'], ['zoom'], 10, 0.75, 13, 0.6, 14, 0.5],
        iconAllowOverlap: true,
        iconRotationAlignment: 'map',
      ),
    );

    await controller.addSymbolLayer(
      'placesErrorSource',
      'placesErrorLayer',
      const SymbolLayerProperties(
        iconImage: 'placeError',
        iconSize: ['interpolate', ['linear'], ['zoom'], 10, 0.75, 13, 0.6, 14, 0.5],
        iconAllowOverlap: true,
        iconRotationAlignment: 'map',
      ),
    );

  }

  void _onMapCreated(MapboxMapController controller) async {
    _mapController = controller;
    context
        .read<MapBloc>()
        .add(SetMapControllerEvent(mapController: _mapController));
    var pinPrivateImage = await loadMarkerImage(AppImages.pinPrivatePng);
    var pinAvailableImage = await loadMarkerImage(AppImages.pinAvailablePng);
    var pinDisabledImage = await loadMarkerImage(AppImages.pinDisabledPng);
    var placeAvailableImage =
        await loadMarkerImage(AppImages.placeAvailablePng);
    var placeUnavailableImage =
        await loadMarkerImage(AppImages.placeUnavailablePng);
    var placeErrorImage = await loadMarkerImage(AppImages.placeErrorPng);

    _mapController.addImage('pinPrivate', pinPrivateImage);
    _mapController.addImage('pinAvailable', pinAvailableImage);
    _mapController.addImage('pinDisabled', pinDisabledImage);
    _mapController.addImage('placeAvailable', placeAvailableImage);
    _mapController.addImage('placeUnavailable', placeUnavailableImage);
    _mapController.addImage('placeError', placeErrorImage);
    _mapController.setSymbolIconAllowOverlap(true);
    _mapController.onSymbolTapped.add(_onSymbolTapped);
    _mapController.onFeatureTapped.add(_onFeatureTapped);
    _mapController.addListener(() async{
      var zoom = await controller.getMetersPerPixelAtLatitude(90);
      print(zoom);
      if (zoom > 0.04) {
         _mapController.removeLayer('cars2');
         context.read<MapBloc>().add(
           SetBottomSheetEvent(
             bottomSheet: null,
           ),
         );
      } else {
         _mapController.addSymbolLayer(
          'cars',
          'cars2',
          SymbolLayerProperties(
            iconImage: 'placeUnavailable',
            iconSize: ['interpolate', ['linear'], ['zoom'], 10, 0.75,13, 0.6, 14, 0.5],
            iconAllowOverlap: true,
            iconRotationAlignment: 'map',
          ),
        );
         context.read<MapBloc>().add(
           SetBottomSheetEvent(
             bottomSheet: ParkingInfoBottomSheet(),
           ),
         );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;

    return BlocBuilder<MapBloc, MapState>(builder: (_, state) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomSheet: state.bottomSheet,
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: BlocConsumer<ParkingBloc, ParkingState>(
              listenWhen: (prev, next) {
                return prev.getParkingRequestStatus !=
                    next.getParkingRequestStatus;
              },
              listener: (_, state) {
                var userId = context.read<UserBloc>().state.userInfo.id;

                context
                    .read<FreeParkingBloc>()
                    .add(GetFreeParkingEvent(userId: userId));

                var symbols = <SymbolOptions>[];

                state.parkingList.forEach((element) {
                  symbols.add(
                    SymbolOptions(
                        iconImage: 'pinAvailable',
                        geometry: LatLng(element.longitude, element.latitude),
                        textSize: 16,
                        textField: element.freePlacesCount.toString(),
                        textColor: '#FFFFFF'),
                  );
                });
                _updateParkingsOnMap(_mapController, symbols);
              },
              builder: (_, state) {
                return Stack(children: [
                  MapboxMap(
                    myLocationEnabled: true,
                    minMaxZoomPreference: const MinMaxZoomPreference(1, 18),
                    styleString: 'assets/style.json',
                    accessToken: dotenv.env['MAPBOX_TOKEN'] ?? '',
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(56.455114546767, 84.985119293168),
                      zoom: 14,
                      tilt: 25,
                    ),
                    onMapCreated: _onMapCreated,
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomTabs(),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleIconButton(
                            iconName: AppImages.plus,
                            onTap: () => _mapController.animateCamera(
                              CameraUpdate.zoomBy(
                                1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CircleIconButton(
                            iconName: AppImages.minus,
                            onTap: () => _mapController.animateCamera(
                              CameraUpdate.zoomBy(
                                -1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 44,
                          ),
                          CircleIconButton(
                            iconName: AppImages.navigation,
                            onTap: _toMyLocation,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 50,
                    child: CircleIconButton(
                      iconName: AppImages.layers,
                      onTap: () => showCupertinoModalBottomSheet(
                        context: context,
                        builder: (context) => SizedBox(
                            height: 176 + MediaQuery.of(context).padding.bottom,
                            child: FilterParkingModal()),
                      ),
                    ),
                  ),
                  BlocListener<ParkingBloc, ParkingState>(
                    listenWhen: (prev, next) =>
                        prev.parkingItem.parkingPlaces !=
                        next.parkingItem.parkingPlaces,
                    listener: (context, state) {
                      if (state.parkingItem.id == 0) return;
                      var placesAvailable = <Map<String, dynamic>>[];
                      var placesUnavailable = <Map<String, dynamic>>[];
                      var placesError = <Map<String, dynamic>>[];

                      state.parkingItem.parkingPlaces.forEach((element) {
                        var symbol= SymbolOptions(
                          geometry:
                          LatLng(element.longitude, element.latitude),
                          iconRotate: element.angle,
                        ).toGeoJson();
                        if (element.status == 'occupied') {
                          placesUnavailable.add(symbol);
                        } else if (element.status == 'unknown') {
                          placesError.add(symbol);

                        } else {
                          placesAvailable.add(symbol);

                        }
                      });
                      _updateParkingPlacesOnMap(_mapController, placesAvailable, placesUnavailable,placesError );

                      _mapController.animateCamera(
                        CameraUpdate.newLatLngZoom(
                          LatLng(state.parkingItem.longitude,
                              state.parkingItem.latitude),
                          18,
                        ),
                      );
                    },
                    child: const SizedBox(),
                  ),
                  BlocListener<UserBloc, UserState>(
                    listener: (context, state) {
                      if (state.userInfo.id != 0) {
                        context
                            .read<UserBloc>()
                            .add(GetUserEvent(id: state.userInfo.id));
                      }
                    },
                    listenWhen: (prev, next) => prev.userInfo != next.userInfo,
                    child: Positioned(
                      left: 16,
                      bottom: 72 + MediaQuery.of(context).padding.bottom,
                      child: const FreeParking(),
                    ),
                  ),
                ]);
              },
            )),
      );
    });
  }
}

const _points = {
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "id": 2,
      "properties": {
        "type": "restaurant",
      },
      "geometry": {
        "type": "Point",
        "coordinates": [151.184913929732943, -33.874874486427181]
      }
    },
    {
      "type": "Feature",
      "id": 3,
      "properties": {
        "type": "airport",
      },
      "geometry": {
        "type": "Point",
        "coordinates": [151.215730044667879, -33.874616048776858]
      }
    },
    {
      "type": "Feature",
      "id": 4,
      "properties": {
        "type": "bakery",
      },
      "geometry": {
        "type": "Point",
        "coordinates": [151.228803547973598, -33.892188026142584]
      }
    },
    {
      "type": "Feature",
      "id": 5,
      "properties": {
        "type": "college",
      },
      "geometry": {
        "type": "Point",
        "coordinates": [151.186470299174118, -33.902781145804774]
      }
    }
  ]
};
