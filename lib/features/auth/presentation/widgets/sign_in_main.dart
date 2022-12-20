import 'package:FoodApp/features/auth/presentation/widgets/sign_in_form.dart';
import 'package:FoodApp/features/auth/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../constants/app_image.dart';
import '../../../../l10n/l10n.dart';
import '../../../../style/style.dart';
import 'buttons_me.dart';

class SignInMain extends HookConsumerWidget {
  SignInMain({super.key});

  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return KeyboardDismissOnTap(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Center(
                  child: SizedBox(
                    height: 196.h,
                    child: Image.asset(AppImage.axmadjoja),
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    'Войти',
                    style: AppTextStyle.textStyleFunk(size: 28.sp),
                  ),
                ),
                SizedBox(height: 7.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    'Зарегистрируйтесь чтобы получить все функции нашего приложения.',
                    style: AppTextStyle.textStyleFunk(
                      size: 17.sp,
                      color: AppColor.black.withOpacity(0.2),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                // ? PHONRNUMBER INPUT FILED

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const SizedBox(
                    width: double.infinity,
                    child: SignInForm(),
                  ),
                ),
                // SizedBox(height: 190.h),
                SizedBox(height: 25.h),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: PageInElevetedButton(
                      titleName: 'Войти',
                      function: () async {
                        FocusScope.of(context).unfocus();
                        await ref
                            .read(signInFormNotifierProvider.notifier)
                            .signInWithPhoneNumber();

                        // if (_key.currentState!.validate()) {
                        //   LoginService.loginFunction(context).then(
                        //     (status) {
                        //       status
                        //           ? Navigator.pushNamed(
                        //               context,
                        //               '/verfication',
                        //             )
                        //           : () {
                        //               messangerAboutError(
                        //                   context, '$status LOGIN');
                        //             };
                        //     },
                        //   );
                        // } else {
                        //   messangerAboutError(
                        //     context,
                        //     'Telifon raqamingizni tekshirib qaytadan kiriting',
                        //   );
                        // }
                      },
                      status: true,
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Center(
                  child: Text(
                    'У вас еще нет аккаунта?',
                    style: AppTextStyle.textStyleFunk(
                      size: 17.sp,
                      color: const Color.fromRGBO(0, 0, 0, 0.68),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 54.h),
                      side: BorderSide(color: AppColor.profilePageAppBarColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                    child: Text(
                      'Регистрация',
                      style: AppTextStyle.subLoc,
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/signup',
                        (route) => false,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
