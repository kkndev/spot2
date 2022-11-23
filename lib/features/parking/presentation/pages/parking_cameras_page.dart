import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:spot2/consts/app_images.dart';
import 'package:spot2/features/parking/presentation/widgets/camera_modal.dart';

import '../../../../core/presentation/components/header.dart';
import '../../../../extensions/extensions.dart';
import '../../../favorite_parking/presentation/widgets/favorite_parkings_modal.dart';
import '../../../parking_camera/domain/entity/request_status/request_status.dart';
import '../../../parking_camera/presentation/bloc/parking_camera/parking_camera.dart';
import '../bloc/bloc.dart';

class ParkingCamerasPage extends StatefulWidget {
  const ParkingCamerasPage({Key? key}) : super(key: key);

  @override
  State<ParkingCamerasPage> createState() => _ParkingCamerasPageState();
}

class _ParkingCamerasPageState extends State<ParkingCamerasPage> {
  @override
  void deactivate() {
    context.read<ParkingCameraBloc>().add(ResetParkingCamerasEvent());
    super.deactivate();
  }

  @override
  void initState() {
    var parkingItem = context.read<ParkingBloc>().state.parkingItem;
    parkingItem.cameras.forEach((element) {
      context.read<ParkingCameraBloc>().add(GetParkingCameraEvent(
            cameraUid: element.cameraUid,
            parkingUid: parkingItem.parkingUid,
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocConsumer<ParkingBloc, ParkingState>(
            listener: (context, state) {},
            buildWhen: (prev, next) => prev.parkingItem != next.parkingItem,
            builder: (context, state) {
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Header(label: 'Камеры'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (context
                                .watch<ParkingCameraBloc>()
                                .state
                                .parkingCameraRequestStatus ==
                            const RequestStatus.loading())
                          const SizedBox(
                            height: 182,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        if (context
                            .watch<ParkingCameraBloc>()
                            .state
                            .imageUrlList
                            .isNotEmpty)
                          Column(
                              children: (context
                                      .watch<ParkingCameraBloc>()
                                      .state
                                      .imageUrlList as List)
                                  .map((e) => GestureDetector(
                                        onTap: () =>
                                            showCupertinoModalBottomSheet(
                                          context: context,
                                          builder: (context) => SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.8,
                                              child:
                                                   CameraModal(image: e)),
                                        ),
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 16),
                                          child: Image.network(
                                            e,
                                            loadingBuilder:
                                                (BuildContext context,
                                                    Widget child,
                                                    ImageChunkEvent?
                                                        loadingProgress) {
                                              if (loadingProgress == null) {
                                                return child;
                                              }
                                              return SizedBox(
                                                height: 182,
                                                child: Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    value: loadingProgress
                                                                .expectedTotalBytes !=
                                                            null
                                                        ? loadingProgress
                                                                .cumulativeBytesLoaded /
                                                            loadingProgress
                                                                .expectedTotalBytes!
                                                        : null,
                                                  ),
                                                ),
                                              );
                                            },
                                            errorBuilder: (context, _, __) {
                                              return SizedBox(
                                                height: 182,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    SvgPicture.asset(
                                                      AppImages.noAccess,
                                                      width: 64,
                                                      height: 64,
                                                    ),
                                                    const SizedBox(
                                                      height: 12,
                                                    ),
                                                    Text(
                                                      'Камера недоступна',
                                                      style: textStyles.body1
                                                          .copyWith(
                                                        color: appColors
                                                            .textSecondary,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 48,
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ))
                                  .toList())
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
