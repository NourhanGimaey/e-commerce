import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_from_scratch/core/routes/app_router.dart';
import 'package:ecommerce_from_scratch/core/utils/app_assets.dart';
import 'package:ecommerce_from_scratch/features/auth/presentation/view_model/auth_view_model.dart';
import 'package:ecommerce_from_scratch/features/auth/widgets/auth_elevated_button.dart';
import 'package:ecommerce_from_scratch/features/auth/widgets/auth_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    spacing: 16,
                    children: [
                      Text('fullName'.tr(), style: textTheme.titleMedium),
                      Authtextformfield(
                        hint: 'enterYourName'.tr(),
                        controller: viewModel.fullNameController,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      Text('mobileNumber'.tr(), style: textTheme.titleMedium),
                      Authtextformfield(
                        hint: 'enterYourMobileNumber'.tr(),
                        controller: viewModel.mobileNumberController,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      Text('emailAddress'.tr(), style: textTheme.titleMedium),
                      Authtextformfield(
                        hint: 'enterYourEmailAddress'.tr(),
                        controller: viewModel.emailController,
                        keyboardType: TextInputType.emailAddress,
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
                  SizedBox(height: 8),
                  AuthElevatedButton(
                    onPress: () {
                      Navigator.pushReplacementNamed(
                        context,
                        AppRoutes.signInScreen.path,
                      );
                    },
                    text: 'signUp'.tr(),
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
