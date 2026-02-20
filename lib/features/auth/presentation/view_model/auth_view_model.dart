import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();

  void signIn() {
    if (formKey.currentState!.validate()) {}
  }

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    fullNameController.dispose();
    passwordController.dispose();
    mobileNumberController.dispose();
    super.dispose();
  }
}
