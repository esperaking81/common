import 'package:flutter/material.dart';

class OtpCodeInput extends StatelessWidget {
  const OtpCodeInput({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
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
