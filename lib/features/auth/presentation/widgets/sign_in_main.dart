import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_project_template_riverpod/style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../l10n/l10n.dart';
import '../../shared/providers.dart';
import 'sign_in_form.dart';

class SignInMain extends HookConsumerWidget {
  SignInMain({super.key});

  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;

    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.signIn),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Center(
                child: SizedBox(
                  height: 196.h,
                  child: Image.asset('assets/images/axmadjoja.png'),
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  "Войти",
                  style: AppTextStyle.textStyleFunk(size: 28.sp),
                ),
              ),
              SizedBox(height: 7.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  "Зарегистрируйтесь чтобы получить все функции нашего приложения.",
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
                child: SizedBox(
                    width: double.infinity,
                    child: Form(
                      key: _key,
                      child: TextFormField(
                        // controller:
                        //     context.watch<ProfileCubit>().phoneController,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                        inputFormatters: [
                          MaskTextInputFormatter(
                            mask: "+998 (##) ###-##-##",
                            filter: {"#": RegExp(r'[0-9]')},
                            type: MaskAutoCompletionType.lazy,
                          ),
                        ],
                        decoration: InputDecoration(
                          prefixIcon: Image.asset('assets/icons/callIcon.png'),
                          hintText: "Номер телефона",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),
                        validator: (status) {
                          if (status!.length != 19) {
                            return "Telifon nomeringizni kiriting";
                          }
                        },
                      ),
                    )),
              ),
              SizedBox(height: 190.h),
              Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text("Something is here")),
              ),
              SizedBox(height: 25.h),
              Center(
                child: Text(
                  "У вас еще нет аккаунта?",
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
                    "Регистрация",
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
    );
  }
}
