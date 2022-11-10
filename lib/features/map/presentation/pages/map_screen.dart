import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:dgis_flutter/dgis_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:spot2/consts/app_images.dart';
import 'package:spot2/features/auth/domain/entities/parking_place_entity.dart';
import 'package:spot2/features/auth/presentation/bloc/auth/auth.dart';
import 'package:spot2/helpers/image_util.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final GisMapController controller = GisMapController();
  late MapboxMapController _mapController;

  late final Future<List<GisMapMarker>> icons;
  List<GisMapMarker> list = [];
  int counter = 0;

  @override
  void initState() {
    icons = Future.wait([]);
    super.initState();
  }

  openPlaces(parkingPlaceEntityList) async {
    List<GisMapMarker> items2 = [];
    for (var element in parkingPlaceEntityList) {
      items2.add(
        GisMapMarker(
          // latitude: element.longitude + 0.00002443,
          latitude: element.longitude,
          longitude: element.latitude,
          // longitude: element.latitude - 0.00006470,
          angle: element.angle,
          zIndex: 0,
          id: element.id.toString(),
          status: element.status,
        ),
      );
    }
    print(items2[0].angle);
    await controller.setCameraPosition(
      latitude: parkingPlaceEntityList[4].longitude,
      longitude: parkingPlaceEntityList[4].latitude,
      zoom: 19,
      duration: 300,
    );
    controller.updateMarkers(items2);
  }

  void _onMapCreated(MapboxMapController controller) {
    _mapController = controller;
    // _updateMarkerPosition();
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
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (prev, next) {
          return prev.parkingPlaceEntityList.length !=
              next.parkingPlaceEntityList.length;
        },
        listener: (_, state) {
          openPlaces(state.parkingPlaceEntityList);
        },
        builder: (_, state) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ButtonMapWidget(
              list: list,
              controller: controller,
              child: BlocConsumer<AuthBloc, AuthState>(
                listenWhen: (prev, next) {
                  return prev.phoneOrEmail == next.phoneOrEmail;
                },
                listener: (_, state) {
                  // List<GisMapMarker> items2 = [];
                  // for (var element in state.parkingEntityList) {
                  //   items2.add(
                  //     GisMapMarker(
                  //       // latitude: element.latitude + 0.00002443,
                  //       latitude: element.latitude,
                  //       longitude: element.longitude,
                  //       // longitude: element.longitude - 0.00006470,
                  //       angle: 0,
                  //       zIndex: 0,
                  //       id: element.id.toString(),
                  //       status: 'status',
                  //     ),
                  //   );
                  // }
                  // controller.updateMarkers(items2);
                },
                builder: (_, state) {
                  return Stack(children: [
                    MapboxMap(
                      styleString: 'assets/style.json',
                      accessToken:
                          'pk.eyJ1IjoibmVsbGllMTEiLCJhIjoiY2w5bnI1aHMzMGFqOTN1a2IydmpqYmZ3dCJ9.Vjc9IVddoOoqdill5G-X5A',
                      initialCameraPosition: const CameraPosition(
                        target: LatLng(56.455114546767, 84.985119293168),
                        zoom: 14,
                        bearing: 85,
                        tilt: 25,
                      ),
                      onMapCreated: _onMapCreated,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        children: [
                          FloatingActionButton(
                            child: const Icon(Icons.menu),
                            onPressed: () => _updateMarkerPosition(
                                state.parkingPlaceEntityList),
                          ),
                          FloatingActionButton(
                              child: const Icon(Icons.add),
                              onPressed: () => context.read<AuthBloc>().add(
                                  GetParkingPlacesEvent(code: 'code', id: 3))),
                        ],
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
            ),
          );
        },
      ),
    );
  }
}

class ButtonMapWidget extends StatelessWidget {
  final Widget child;
  final GisMapController controller;
  final List<GisMapMarker> list;

  const ButtonMapWidget({
    Key? key,
    required this.child,
    required this.controller,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        // Align(
        //     alignment: Alignment.centerRight,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       children: [
        //         FloatingActionButton(
        //           child: const Icon(Icons.gps_fixed),
        //           onPressed: () async {
        //             context
        //                 .read<AuthBloc>()
        //                 .add(GetParkingItemsEvent(code: 'code'));
        //             context.read<AuthBloc>().add(UpdatePhoneOrEmail(
        //                 newPhoneOrEmail: Random().toString()));
        //           },
        //         ),
        //         FloatingActionButton(
        //           child: const Icon(Icons.menu),
        //           onPressed: () => context.router.pushNamed('menu'),
        //         ),
        //       ],
        //     )),
      ],
    );
  }
}
