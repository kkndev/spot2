import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';
import '../../domain/entity/favorite_parking_entity/favorite_parking_entity.dart';
import 'delete_modal.dart';
import 'tertiary_button.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.parking,
  }) : super(key: key);

  final FavoriteParkingEntity parking;

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                parking.name,
                style: textStyles.subtitle1,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                parking.userUid,
                style: textStyles.caption.copyWith(
                  color: appColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
        TertiaryButton(
          label: 'Удалить',
          onTap: () => showDialog(
              barrierColor: appColors.backgroundModal,
              context: context,
              builder: (_) {
                return const DeleteModal();
              }),
          // onTap: () => context
          //     .read<FavoriteParkingBloc>()
          //     .add(DeleteFavoriteParkingEvent(id: parking.id)),
        ),
      ],
    );
  }
}
