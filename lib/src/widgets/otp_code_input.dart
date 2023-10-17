import 'package:flutter/material.dart';

class OtpCodeInput extends StatelessWidget {
  const OtpCodeInput({
    super.key,
    this.controller,
    this.onChanged,
  });

  final TextEditingController? controller;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      onChanged: onChanged,
      maxLength: 1,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(.2),
          ),
        ),
      ),
    );
  }
}
