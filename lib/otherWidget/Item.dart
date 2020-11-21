import 'package:flutter/material.dart';
class Items extends StatelessWidget {
  //as stateless is a widget that CANNOT change state then it must be of type final or const
  //the receive here below
   Items({//to be required we put a required @required
   @required this.text,
   @required this.icono,
  @required this.onTap
  });
  
  final Text text;
  final Icon icono;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(//teja,sombrebro
            leading: icono,//Icon(Icons.add_a_photo_outlined),//lider
           // trailing:Icon(Icons.arrow_forward_ios),//parte de atras BACK
            title: text,//Text("Opcion 1 "),
            onTap: onTap,//allows us to press
          );
  }
}