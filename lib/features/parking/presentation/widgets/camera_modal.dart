import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spot2/features/user/presentation/bloc/user/user.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../../../favorite_parking/presentation/widgets/modal_header.dart';
import '../widgets/home_list_item.dart';

class CameraModal extends StatelessWidget {
  const CameraModal({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SvgPicture.asset(
              AppImages.roll,
              width: 36,
              height: 12,
            ),
            const SizedBox(
              height: 8,
            ),
            const ModalHeader(label: ''),
            const SizedBox(
              height: 16,
            ),
            InteractiveViewer(
              child: Image.network(
                image,
                height: 500,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return SizedBox(
                    height: 500,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, _, __) {
                  return SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
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
                          style: textStyles.body1.copyWith(
                            color: appColors.textSecondary,
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
            )
          ],
        ),
      ),
    );
  }
}
