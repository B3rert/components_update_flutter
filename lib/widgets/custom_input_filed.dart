import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.helperText,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.type,
    this.isPassword,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  final String? helperText;
  final String? labelText;
  final String? hintText;
  final IconData? suffixIcon;
  final TextInputType? type;
  final bool? isPassword;

  final String formProperty;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword ?? false,
      keyboardType: type ?? TextInputType.text,
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => {
        formValues[formProperty] = value,
      },
      validator: (value) {
        if (value == null) return 'Campo requerido';
        return value.length < 3 ? 'Mínimo 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        //counter: const Text('Caracteres'),
        helperText: helperText,
        labelText: labelText,
        hintText: hintText,
        suffixIcon: suffixIcon == null
            ? null
            : Icon(
                suffixIcon,
                color: AppTheme.primary,
              ),
      ),
    );
  }
}
