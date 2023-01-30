import 'package:flutter/material.dart';
import 'package:my_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Xurxo',
      'last_name': 'Bello',
      'email': 'xurxo@bello.es',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField( labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'first_name', formValues: formValues),
                SizedBox(height: 30),
                CustomInputField( labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues),
                SizedBox(height: 30),
                CustomInputField( labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                SizedBox(height: 30),
                CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true, formProperty: 'password', formValues: formValues),
                SizedBox(height: 30),

                DropdownButtonFormField<String>(
                  items: [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Admin2', child: Text('Admin2')),
                    DropdownMenuItem(value: 'Admin3', child: Text('Admin3')),
                    DropdownMenuItem(value: 'Admin4', child: Text('Admin4')),
                  ], 
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
          
                ElevatedButton(
                  onPressed: () {

                    // con este código hacemos que cuando pulsemos el botón desaparezca el teclado
                    FocusScope.of(context).requestFocus(FocusNode());
                    
                    // en la próxima linea tenemos dos "!", el primero hace una negación y el segundo sirve para decirle a Dart que confíe en nosotros que siempre vamos a tener un estado en ese punto
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }

                    print(formValues);
                  }, 
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')) )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}