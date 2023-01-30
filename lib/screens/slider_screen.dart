import 'package:flutter/material.dart';
import 'package:my_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 170;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            // divisions: 10,
            value: _sliderValue, 
            onChanged: _sliderEnabled ?
            (value) {
              _sliderValue = value;
              setState(() {});
            }
            : null,
          ),

          Checkbox(
            value: _sliderEnabled, 
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {_sliderEnabled = value ?? true;})
          ),

          Switch(
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {_sliderEnabled = value;})
          ),

          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {_sliderEnabled = value;})
            ),

            // AboutListTile pone un About en nuestra aplicación con todas las licencias que nuestra aplicación está utilizando
            const AboutListTile(),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.megaidea.net/wp-content/uploads/2020/03/batman-clipart-3-587x1024.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

        ],
      )
    );
  }
}