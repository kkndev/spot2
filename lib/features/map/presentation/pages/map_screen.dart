import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:spot2/consts/app_images.dart';
import 'package:spot2/features/auth/domain/entities/parking_place_entity.dart';
import 'package:spot2/features/auth/presentation/bloc/auth/auth.dart';
import 'dart:io';
import 'dart:math';

import '../../../../core/presentation/components/circle_icon_button.dart';
import '../../../../extensions/extensions.dart';
import '../../../parking/presentation/bloc/parking/parking_bloc.dart';
import '../../../parking/presentation/bloc/parking/parking_event.dart';
import '../../../parking/presentation/bloc/parking/parking_state.dart';
import '../../../parking/presentation/widgets/filter_parking_modal.dart';
import '../widgets/bottom_tabs.dart';

Future<Uint8List> loadMarkerImage() async {
  var byteData =
      await rootBundle.load("assets/images/png/place_unavailable.png");
  return byteData.buffer.asUint8List();
}

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late MapboxMapController _mapController;
  List<Marker> _markers = [];
  final Random _rnd = new Random();
  List<_MarkerState> _markerStates = [];

  void _addMarkerStates(_MarkerState markerState) {
    _markerStates.add(markerState);
  }

  int counter = 0;

  @override
  void initState() {
    context.read<ParkingBloc>().add(GetParkingEvent());
    super.initState();
  }

  Future<void> addGeojsonCluster(MapboxMapController controller) async {
    var markerImage = await loadMarkerImage();

    controller.addImage('marker', markerImage);
    var geojson = GeojsonSourceProperties(
        data: 'https://docs.mapbox.com/mapbox-gl-js/assets/earthquakes.geojson',
        cluster: true,
        clusterMaxZoom: 14, // Max zoom to cluster points on
        clusterRadius:
            50 // Radius of each cluster when clustering points (defaults to 50)
        );
    await controller.addSource(
        "earthquakes",
        GeojsonSourceProperties(
            data:
                'https://docs.mapbox.com/mapbox-gl-js/assets/earthquakes.geojson',
            cluster: true,
            clusterMaxZoom: 14, // Max zoom to cluster points on
            clusterRadius:
                50 // Radius of each cluster when clustering points (defaults to 50)
            ));

    await controller.addSymbolLayer(
        "earthquakes",
        "earthquakes-count",
        SymbolLayerProperties(
          // iconSize: 2,
          iconAllowOverlap: true,
          iconImage: 'marker',
          // iconColor: '#FF00FF',
          textField: [Expressions.get, 'point_count_abbreviated'],
          textFont: ['DIN Offc Pro Medium', 'Arial Unicode MS Bold'],
          textSize: 12,
        ));
    // await controller.addSymbol(
    //   SymbolOptions(
    //     iconImage: 'beer',
    //   ),
    // );
  }

  _toMyLocation() async {
    final location = Location();
    final hasPermissions = await location.hasPermission();
    if (hasPermissions != PermissionStatus.granted) {
      await location.requestPermission();
    }
  }

  void _onMapCreated(MapboxMapController controller) {
    _mapController = controller;
    // _updateMarkerPosition();
  }

  void setMarkers() {
    var param = <LatLng>[];
    for (var i = 0; i < 100; i++) {
      final lat = _rnd.nextDouble() * 20 + 30;
      final lng = _rnd.nextDouble() * 20 + 125;
      param.add(LatLng(lat, lng));
    }

    _mapController.toScreenLocationBatch(param).then((value) {
      for (var i = 0; i < 100; i++) {
        var point = Point<double>(value[i].x as double, value[i].y as double);
        _addMarker(point, param[i]);
      }
    });
  }

  void _addMarker(Point<double> point, LatLng coordinates) {
    setState(() {
      _markers.add(Marker(_rnd.nextInt(100000).toString(), coordinates, point,
          _addMarkerStates));
    });
  }

  void _updateMarkerPosition(
      List<ParkingPlaceEntity> parkingPlaceEntityList) async {
    List<SymbolOptions> items = [];
    for (var element in parkingPlaceEntityList) {
      var iconImage = AppImages.placeUnavailablePng;
      if (element.status == 'free') {
        iconImage = AppImages.placeAvailablePng;
      }
      items.add(
        SymbolOptions(
          iconRotate: element.angle,
          iconSize: 1,
          geometry: LatLng(element.longitude, element.latitude),
          iconImage: iconImage,
        ),
      );
    }
    print(items[0].iconImage);
    _mapController.clearSymbols();
    _mapController.addSymbols(
      items,
    );
  }

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;

    return Scaffold(
      // bottomSheet: Container(
      //   height: 300,
      //   color: Colors.red,
      // ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (prev, next) {
          return prev.parkingPlaceEntityList.length !=
              next.parkingPlaceEntityList.length;
        },
        listener: (_, state) {
          // openPlaces(state.parkingPlaceEntityList);
        },
        builder: (_, state) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: BlocConsumer<ParkingBloc, ParkingState>(
              listenWhen: (prev, next) {
                return prev.getParkingRequestStatus !=
                    next.getParkingRequestStatus;
              },
              listener: (_, state) {
                // _mapController.addRasterLayer(sourceId, layerId, properties)
              },
              builder: (_, state) {
                return Stack(children: [
                  MapboxMap(
                    myLocationEnabled: true,
                    minMaxZoomPreference: const MinMaxZoomPreference(1, 18),
                    styleString: 'assets/style.json',
                    accessToken:
                        'sk.eyJ1Ijoic3JybXN0ayIsImEiOiJja3JuMTk4czExcnZ4Mm9wZXVzem9oOTB6In0.sRCyAAhGYYDPwyWrpgUTqQ',
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(56.455114546767, 84.985119293168),
                      zoom: 14,
                      bearing: 85,
                      tilt: 25,
                    ),
                    onMapCreated: _onMapCreated,
                  ),
                  IgnorePointer(
                      ignoring: true,
                      child: Stack(
                        children: _markers,
                      )),
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
                            height: 16,
                          ),
                          CircleIconButton(
                            iconName: AppImages.navigation,
                            onTap: () => addGeojsonCluster(_mapController),
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
                        builder: (context) => const SizedBox(
                            height: 176, child: FilterParkingModal()),
                      ),
                    ),
                  ),
                ]);
                // return GisMap(
                //   directoryKey: 'rubyqf9316',
                //   mapKey: 'b7272230-6bc3-47e9-b24b-0eba73b12fe1',
                //   useHybridComposition: true,
                //   controller: controller,
                //   onTapMarker: (marker) async {
                //     // ignore: avoid_print
                //     print(marker);
                //     context.read<AuthBloc>().add(GetParkingPlacesEvent(
                //         code: 'code', id: int.parse(marker.id)));
                //   },
                //   startCameraPosition: const GisCameraPosition(
                //     latitude: 56.455114546767,
                //     longitude: 84.985119293168,
                //     bearing: 85.0,
                //     tilt: 25.0,
                //     zoom: 14.0,
                //   ),
                // );
              },
            ),
          );
        },
      ),
    );
  }
}

class Marker extends StatefulWidget {
  final Point _initialPosition;
  final LatLng _coordinate;
  final void Function(_MarkerState) _addMarkerState;

  Marker(
      String key, this._coordinate, this._initialPosition, this._addMarkerState)
      : super(key: Key(key));

  @override
  State<StatefulWidget> createState() {
    final state = _MarkerState(_initialPosition);
    _addMarkerState(state);
    return state;
  }
}

class _MarkerState extends State with TickerProviderStateMixin {
  final _iconSize = 20.0;

  Point _position;

  late AnimationController _controller;
  late Animation<double> _animation;

  _MarkerState(this._position);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var ratio = 1.0;

    //web does not support Platform._operatingSystem
    ratio = Platform.isIOS ? 1.0 : MediaQuery.of(context).devicePixelRatio;

    return Positioned(
        left: _position.x / ratio - _iconSize / 2,
        top: _position.y / ratio - _iconSize / 2,
        child: RotationTransition(
            turns: _animation,
            child: Image.asset('assets/images/png/place_unavailable.png',
                height: _iconSize)));
  }

  void updatePosition(Point<num> point) {
    setState(() {
      _position = point;
    });
  }

  LatLng getCoordinate() {
    return (widget as Marker)._coordinate;
  }
}
