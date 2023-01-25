import 'package:flutter/material.dart';

import 'package:my_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6_4x3.jpg', name: 'Un bonito paisaje',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://niixer.com/wp-content/uploads/2020/11/flutter-dart.png',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg', name: 'Buho',),
          SizedBox(height: 100),

        ],
      )
    );
  }
}
