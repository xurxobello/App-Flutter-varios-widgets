import 'package:flutter/material.dart';
import 'package:my_app/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;

  // con la ? indicamos que ese valor puede ser opcional, por lo que en el this.name no tenemos que poner required
  final String? name;

  const CustomCardType2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage( imageUrl ),
            placeholder: const AssetImage('assets/jar-loading.gif'),

            width: double.infinity,
            height: 400,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          // hacemos un if para que en el caso de que no nos aporten name no aparezca nada
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text( name! )
            )
        ],
      ),
    );
  }
}