import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '/consts/app_images.dart';
import '/extensions/extensions.dart';
import '/features/user/presentation/bloc/user/user.dart';
import '/core/presentation/components/components.dart';

class PromoCodesPage extends StatefulWidget {
  const PromoCodesPage({Key? key}) : super(key: key);

  @override
  State<PromoCodesPage> createState() => _PromoCodesPageState();
}

class _PromoCodesPageState extends State<PromoCodesPage> {
  final TextEditingController promoCodeController = TextEditingController();
  late FToast fToast;

  bool isDisabled = true;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  void deactivate() {
    context.read<UserBloc>().add(ClearPromoCodeEvent());
    fToast.removeCustomToast();
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
    promoCodeController.dispose();
  }

  _showToast() {
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    var appColors = Theme.of(context).extension<AppColors>();
    Widget toast = GestureDetector(
      onTap: ()=>fToast.removeCustomToast(),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: appColors?.statusError,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AppImages.alertCheck,
              color: appColors?.textPrimaryInverse,
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Text(
                'Вам стали доступны парковки',
                style: textStyles?.caption
                    .copyWith(color: appColors?.textPrimaryInverse, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );

    fToast.showToast(
        child: toast,
        toastDuration: const Duration(seconds: 30),
        positionedToastBuilder: (context, child) {
          return Positioned(
            bottom: 24.0,
            left: 24.0,
            right: 24.0,
            child: child,
          );
        });
  }

  onChanged(String newText) {
    print(newText);
    context.read<UserBloc>().add(ClearPromoCodeEvent());
    if (newText == '') {
      setState(() {
        isDisabled = true;
      });
    } else {
      setState(() {
        isDisabled = false;
      });
    }
  }

  onClear() {
    promoCodeController.clear();
    setState(() {
      isDisabled = true;
    });
    context.read<UserBloc>().add(ClearPromoCodeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Header(label: 'Промокоды'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: BlocConsumer<UserBloc, UserState>(
                  listenWhen: (prevState, nextState) {
                    print(prevState.activatePromoCodeResult);
                    print(nextState.activatePromoCodeResult);
                    return prevState.activatePromoCodeResult !=
                        nextState.activatePromoCodeResult;
                  },
                  listener: (context, state) {
                    if (state.activatePromoCodeResult ==
                        'Промокод недействителен') {
                      _showToast();
                    }
                  },
                  builder: (context, state) {
                    return Column(
                      children: [
                        TextInput(
                          onClear: onClear,
                          onChanged: onChanged,
                          controller: promoCodeController,
                          errorText:state.activatePromoCodeResult,
                        ),
                        const SizedBox(
                          height: 36,
                        ),PrimaryButton(
                              isDisabled: isDisabled,
                              label: 'активировать',
                              onTap: () {
                                context.read<UserBloc>().add(
                                  ActivatePromoCodeEvent(
                                      promoCode: promoCodeController.text),
                                );
                                FocusScope.of(context).unfocus();
                              }
                            // onTap: () => context.router.pushNamed('menu'),
                          ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
