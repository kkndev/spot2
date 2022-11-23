import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../../../favorite_parking/presentation/widgets/favorite_parkings_modal.dart';
import '../../../parking/presentation/bloc/parking/parking_bloc.dart';
import '../../../parking/presentation/bloc/parking/parking_event.dart';
import '../../../parking/presentation/widgets/search_parking_modal.dart';

class BottomTabs extends StatelessWidget {
  const BottomTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Container(
      height: 60 + MediaQuery.of(context).padding.bottom,
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      decoration: BoxDecoration(
        color: appColors.backgroundGlobe,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TabItem(
            label: 'Парковки',
            isActive: true,
            icon: AppImages.parkingTab,
            iconActive: AppImages.parkingTabActive,
            onTap: () => context.read<ParkingBloc>().add(GetParkingEvent()),
          ),
          TabItem(
            label: 'Поиск',
            isActive: false,
            icon: AppImages.searchTab,
            iconActive: AppImages.searchTabActive,
            onTap: () => showCupertinoModalBottomSheet(
              context: context,
              builder: (context) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: const SearchParkingModal()),
            ),
          ),
          TabItem(
            label: 'Избранное',
            isActive: false,
            icon: AppImages.favoriteTab,
            iconActive: AppImages.favoriteTabActive,
            onTap: () => showCupertinoModalBottomSheet(
              context: context,
              builder: (context) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: const FavoriteParkingModal()),
            ),
          ),
          TabItem(
            label: 'Меню',
            isActive: false,
            icon: AppImages.menuTab,
            iconActive: AppImages.menuTabActive,
            onTap: () => context.router.pushNamed('menu'),
          ),
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({
    Key? key,
    this.isActive = false,
    required this.icon,
    required this.iconActive,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final bool isActive;
  final String label;
  final String icon;
  final String iconActive;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                isActive ? iconActive : icon,
                width: 28,
                height: 28,
              ),
              Text(
                label,
                style: textStyles.overline.copyWith(
                  color: isActive
                      ? appColors.textPrimary
                      : appColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
