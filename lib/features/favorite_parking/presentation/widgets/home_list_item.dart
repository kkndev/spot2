import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../../domain/entity/favorite_parking_entity/favorite_parking_entity.dart';
import 'tertiary_button.dart';

class HomeListItem extends StatefulWidget {
  const HomeListItem({
    Key? key,
    required this.parking,
  }) : super(key: key);

  final FavoriteParkingEntity parking;

  @override
  State<HomeListItem> createState() => _HomeListItemState();
}

class _HomeListItemState extends State<HomeListItem> {
  bool isHome = false;

  void toggleIsHome() {
    setState(() {
      isHome = !isHome;
    });
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
                        widget.parking.name,
                        style: textStyles.subtitle1,
                      ),
                    )
                  : Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.parking.name,
                            style: textStyles.subtitle1,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            widget.parking.userUid,
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
