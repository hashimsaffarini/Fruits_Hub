import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/auth/ui/or_divider.dart';
import 'package:fruits_hub/features/auth/ui/widgets/dont_have_an_account.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizantalPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.visibility,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'هل نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            CustomButton(
              text: 'تسجيل الدخول',
              onPressed: () {},
            ),
            const SizedBox(height: 33),
            const DontHaveAnAccountWidget(),
            const SizedBox(height: 16),
            const OrDivider(),
          ],
        ),
      ),
    );
  }
}
