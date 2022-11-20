import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  void _onSymbolTapped(Symbol symbol) {
    print(123000);
    print(symbol.options.textField);
    var pressedParking = context
        .read<ParkingBloc>()
        .state
        .parkingList
        .firstWhere((element) =>
            element.longitude == symbol.options.geometry?.latitude);

    context.read<MapBloc>().add(
          SetBottomSheetEvent(
            bottomSheet: ParkingInfoBottomSheet(
              parking: pressedParking,
            ),
          ),
        );
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
    await controller.addSymbols(
      symbols,
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

    _mapController.addImage('pinPrivate', pinPrivateImage);
    _mapController.addImage('pinAvailable', pinAvailableImage);
    _mapController.addImage('pinDisabled', pinDisabledImage);
    _mapController.setSymbolIconAllowOverlap(true);
    _mapController.onSymbolTapped.add(_onSymbolTapped);
  }

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;

    return BlocBuilder<MapBloc, MapState>(builder: (_, state) {
      return Scaffold(
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
                var symbols = <SymbolOptions>[];

                state.parkingList.forEach((element) {
                  symbols.add(
                    SymbolOptions(
                        iconImage: 'pinAvailable',
                        geometry: LatLng(element.longitude, element.latitude),
                        textSize: 16,
                        textField: '0',
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
                        builder: (context) => const SizedBox(
                            height: 176, child: FilterParkingModal()),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: 72,
                    child: FreeParking(onTap: () {
                      var userId = context.read<UserBloc>().state.user.id;
                      context.read<MapBloc>().add(
                            SetBottomSheetEvent(
                              bottomSheet: ChooseHomeParkingBottomSheet(),
                            ),
                          );
                    }),
                  ),
                ]);
              },
            )),
      );
    });
  }
}
