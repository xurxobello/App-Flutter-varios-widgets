
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;


  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.prefixIcon,
    this.suffixIcon, 
    this.keyboardType, 
    this.obscureText = false, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,

      // nos aporta un valor inicial al formulario
      initialValue: '',

      // indicamos que automáticamente la primera letra de cada palabra sea mayúscula, muy útil para campos como nombre y apellidos por ejemplo
      textCapitalization: TextCapitalization.words,

      // con esta funcion luego podremos elegir que nos salga un @ en el teclado sin tener que buscarlo, muy útil para los emails
      keyboardType: keyboardType,

      //con esta opción podremos hacer que aparezcan asteriscos en lugar de caracteres, muy útil para contraseñas
      obscureText: obscureText,

      onChanged: (value) {
        print('value $value');
      },

      validator: (value) {
        if (value == null) return 'Este es un campo obligatorio';
        return value.length < 3 ? 'Minimo de tres caracteres' : null;
      },

      autovalidateMode: AutovalidateMode.onUserInteraction,

      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 caracteres',
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        /* border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        ) */
      ),
    );
  }
}