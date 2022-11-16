import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spot2/features/free_parking/presentation/bloc/bloc.dart';
import 'package:spot2/features/free_parking/presentation/bloc/free_parking/free_parking.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../../domain/entity/free_parking_entity/free_parking_entity.dart';
import 'tertiary_button.dart';

class HomeListItem extends StatefulWidget {
  const HomeListItem({
    Key? key,
    required this.parking,
  }) : super(key: key);

  final FreeParkingEntity parking;

  @override
  State<HomeListItem> createState() => _HomeListItemState();
}

class _HomeListItemState extends State<HomeListItem> {
  bool isHome = false;

  void toggleIsHome() {
    setState(() {
      isHome = !isHome;
    });
    if (isHome) {
      context.read<FreeParkingBloc>().add(
            DeleteFreeParkingEvent(id: 1),
          );
    } else {
      context.read<FreeParkingBloc>().add(
            CreateFreeParkingEvent(userId: 1, parkingId: 123),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset(
                AppImages.home,
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 8,
              ),
              isHome
                  ? Expanded(
                      child: Text(
                        widget.parking.parkingId.toString(),
                        style: textStyles.subtitle1,
                      ),
                    )
                  : Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.parking.parkingId.toString(),
                            style: textStyles.subtitle1,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            widget.parking.userId.toString(),
                            style: textStyles.caption.copyWith(
                              color: appColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
        TertiaryButton(
          label: isHome ? 'Добавить' : 'Удалить',
          onTap: toggleIsHome,
        ),
      ],
    );
  }
}
