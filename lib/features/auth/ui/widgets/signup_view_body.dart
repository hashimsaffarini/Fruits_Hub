import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/auth/ui/widgets/have_an_account.dart';
import 'package:fruits_hub/features/auth/ui/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizantalPadding,
        ),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'الأسم كامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(height: 16),
            const TermsAndConditions(),
            const SizedBox(height: 30),
            CustomButton(
              text: 'إنشاء حساب',
              onPressed: () {},
            ),
            const SizedBox(height: 26),
            const HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
