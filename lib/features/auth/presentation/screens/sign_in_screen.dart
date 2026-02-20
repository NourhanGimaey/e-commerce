import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_from_scratch/core/routes/app_router.dart';
import 'package:ecommerce_from_scratch/core/utils/app_assets.dart';
import 'package:ecommerce_from_scratch/features/auth/presentation/view_model/auth_view_model.dart';
import 'package:ecommerce_from_scratch/features/auth/widgets/auth_elevated_button.dart';
import 'package:ecommerce_from_scratch/features/auth/widgets/auth_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    final AuthViewModel viewModel = context.read<AuthViewModel>();

    return Scaffold(
      backgroundColor: colorTheme.secondary,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: viewModel.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 32,
                children: [
                  SvgPicture.asset(AppImages.routeLogo),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text(
                        'loginWelcome'.tr(),
                        style: textTheme.headlineMedium,
                      ),
                      Text('pleaseSignIn'.tr(), style: textTheme.titleMedium),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      Text('userName'.tr(), style: textTheme.titleMedium),
                      Authtextformfield(
                        hint: 'enterYourName'.tr(),
                        controller: viewModel.nameController,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      Text('password'.tr(), style: textTheme.titleMedium),
                      Authtextformfield(
                        isPassword: true,
                        hint: 'enterYourPassword'.tr(),
                        controller: viewModel.passwordController,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                      ),
                    ],
                  ),
                  Text(
                    'forgotPassword'.tr(),
                    style: textTheme.titleLarge,
                    textAlign: TextAlign.end,
                  ),
                  AuthElevatedButton(onPress: () {}, text: 'login'.tr()),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        AppRoutes.signUpScreen.path,
                      );
                    },
                    child: Text(
                      'dontHaveAnAccount'.tr(),
                      style: textTheme.titleLarge,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
