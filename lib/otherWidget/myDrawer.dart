import 'package:flutter/material.dart';

import 'Item.dart';
import 'constantes.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            //split screen
            decoration: BoxDecoration(color: Color(0xff5A8FBB)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Expanded(
                /*child:*/ Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 30,
                      child: Text(
                        "R",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Royer Acuña',
                            style: kwhite,
                          ),
                          Text(
                            '+041 (7)4655445',
                            style: kwhite,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Icon(
                      Icons.wb_sunny,
                      size: 50,
                      color: Colors.white,
                      
                    ),
                    //++++
                    Icon(
                      Icons.arrow_drop_down,
                      size: 60,
                      color: Colors.white,
                    ),
                    //++
                  ],
                ),
                //),
              ],
            ),
          ),
          menuRight()
        ],
      ),
    );
  }

  Widget menuRight() {
    return InkWell(
      //tintero
      child: Container(
        child: Column(
          children: [
            Items(
              text: Text('Nuevo Grupo',
              style: roy,
              ),
              icono: Icon(Icons.people_alt_outlined),
              onTap: () {},
            ),
            Items(
              text: Text('Nuevo Chat Secreto',
              style: roy,
              ),
              icono: Icon(Icons.lock_outline),
              onTap: () {}, //here the actions are executed
            ),
            Items(
              text: Text('Nuevo canal',
              style: roy,
              ),
              icono: Icon(Icons.voice_chat),
              onTap: () {},
            ),
            Items(
              text: Text('Contactos',
              style: roy,
              ),
              icono: Icon(Icons.perm_identity),
              onTap: () {},
            ),
            Items(
              text: Text('Llamadas',
              style: roy,
              ),
              icono: Icon(Icons.phone),
              onTap: () {},
            ),
            Items(
              text: Text('Mensajes Guardados',
              style: roy,
              ),
              icono: Icon(Icons.save_sharp),
              onTap: () {},
            ),
            Items(
              text: Text('Configuraciones',
              style: roy,
              ),
              icono: Icon(Icons.settings),
              onTap: () {},
            ),
            
           
            Divider(
              color: Colors.grey,
            ),
            Items(
              text: Text('Invitar Amigos',
              style: roy,
              ),
              icono: Icon(Icons.people_alt_sharp),
              onTap: () {},
            ),
             Items(
              text: Text('Telegram FAQ',
              style: roy,
              ),
              icono: Icon(Icons.question_answer_rounded),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
