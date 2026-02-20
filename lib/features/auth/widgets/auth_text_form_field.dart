import 'package:flutter/material.dart';

class Authtextformfield extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;
  final bool isPassword;
  const Authtextformfield({
    super.key,
    required this.hint,
    required this.controller,
    required this.keyboardType,
    required this.textInputAction,
    this.validator,
    this.isPassword = false,
  });

  @override
  State<Authtextformfield> createState() => _AuthtextformfieldState();
}

class _AuthtextformfieldState extends State<Authtextformfield> {
  late bool isObscureText = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      validator: widget.validator,
      obscureText: isObscureText,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      autovalidateMode: AutovalidateMode.onUserInteraction,

      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        hintText: widget.hint,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  isObscureText = !isObscureText;
                  setState(() {});
                },
                icon: Icon(
                  isObscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              )
            : null,
      ),
    );
  }
}
