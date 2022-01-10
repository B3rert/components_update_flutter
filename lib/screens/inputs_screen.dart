// ignore_for_file: avoid_print

import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> formValues = {
      'firstName': '',
      'lastName': '',
      'email': '',
      'password': '',
      'role': '',
    };

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Inputs y Forms')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  helperText: "Solo letras",
                  labelText: "Nombre",
                  hintText: "Nombre",
                  suffixIcon: Icons.person,
                  formProperty: 'firstName',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  helperText: "Solo letras",
                  labelText: "Aoellido",
                  hintText: "Aoellido",
                  suffixIcon: Icons.person,
                  formProperty: 'lastName',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: "Correo",
                  hintText: "Correo",
                  suffixIcon: Icons.email,
                  type: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: "Contraseña",
                  hintText: "Contraseña",
                  suffixIcon: Icons.password,
                  isPassword: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      child: Text('Administrador'),
                      value: 'admin',
                    ),
                    DropdownMenuItem(
                      child: Text('Usuario'),
                      value: 'user',
                    ),
                    DropdownMenuItem(
                      child: Text('Suoer Usuario'),
                      value: 'superUser',
                    ),
                    DropdownMenuItem(
                      child: Text('Desarrollador'),
                      value: 'developer',
                    ),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'admin';
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print("Formulario no valido");
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text("Guardar"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
