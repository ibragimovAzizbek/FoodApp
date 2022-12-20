import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../l10n/l10n.dart';
import '../../shared/providers.dart';

class SignInForm extends HookConsumerWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final showErrorMessages = ref.watch(
      signInFormNotifierProvider.select((state) => state.showErrorMessages),
    );

    return Form(
      autovalidateMode: showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.done,
            inputFormatters: [
              MaskTextInputFormatter(
                mask: '+998 (##) ###-##-##',
                filter: {'#': RegExp('[0-9]')},
              ),
            ],
            onChanged: (value) => ref
                .read(signInFormNotifierProvider.notifier)
                .changePhoneNumber(value),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.call),
              hintText: 'Номер телефона',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
            validator: (_) =>
                ref.read(signInFormNotifierProvider).phoneNumber.value.fold(
                      (f) => f.maybeMap(
                        invalidNumber: (_) => l10n.validEmailVerificationText,
                        empty: (_) => l10n.emptyStringVerificationText,
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
          ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     prefixIcon: Icon(Icons.email),
          //     labelText: 'Email',
          //   ),
          //   keyboardType: TextInputType.emailAddress,
          //   onChanged: (value) => ref
          //       .read(signInFormNotifierProvider.notifier)
          //       .changeEmail(value),
          //   validator: (_) =>
          //       ref.read(signInFormNotifierProvider).email.value.fold(
          //             (f) => f.maybeMap(
          //               invalidEmail: (_) => l10n.validEmailVerificationText,
          //               empty: (_) => l10n.emptyStringVerificationText,
          //               orElse: () => null,
          //             ),
          //             (_) => null,
          //           ),
          // ),
          // const SizedBox(height: 8),
          // TextFormField(
          //   decoration: InputDecoration(
          //     prefixIcon: const Icon(Icons.lock),
          //     labelText: l10n.password,
          //   ),
          //   obscureText: true,
          //   onChanged: (value) => ref
          //       .read(signInFormNotifierProvider.notifier)
          //       .changePassword(value),
          //   validator: (_) => ref
          //       .read(signInFormNotifierProvider)
          //       .password
          //       .value
          //       .fold(
          //         (f) => f.maybeMap(
          //           shortPassword: (_) => l10n.shortPasswordVerificationText,
          //           orElse: () => null,
          //         ),
          //         (_) => null,
          //       ),
          // ),
        ],
      ),
    );
  }
}
