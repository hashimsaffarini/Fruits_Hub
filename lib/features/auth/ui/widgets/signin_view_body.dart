import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/ui/logic/signin_cubits/signin_cubit.dart';
import 'package:fruits_hub/features/auth/ui/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/ui/widgets/dont_have_an_account.dart';
import 'package:fruits_hub/features/auth/ui/widgets/social_login_button.dart';

class SiginViewBody extends StatefulWidget {
  const SiginViewBody({super.key});

  @override
  State<SiginViewBody> createState() => _SiginViewBodyState();
}

class _SiginViewBodyState extends State<SiginViewBody> {
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizantalPadding,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) => email = value!,
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              PasswordField(
                onSaved: (value) => password = value!,
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().signin(email, password);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(height: 33),
              const DontHaveAnAccountWidget(),
              const SizedBox(height: 33),
              const OrDivider(),
              const SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesFacebookIcon,
                title: 'تسجيل بواسطة فيسبوك',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.imagesApplIcon,
                title: 'تسجيل بواسطة أبل',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
