import 'package:flutter/material.dart';
import 'package:telegram_app/otherWidget/myDrawer.dart';

import 'otherWidget/SecondScrean.dart';

//import 'pac';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "otro nombre",
      home: MyDesign(),
      theme: ThemeData(
          // brightness: Brightness.dark,//modo oscuro
          ),
      // PATH
      routes: <String, WidgetBuilder>{
        'secondScrean': (BuildContext) => SecondScrean(),
      },
    );
  }
}

class MyDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: myAppBar(context),
      body: myBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Presionado");
        },
        child: Icon(Icons.mark_chat_read_outlined),
      ),

      drawer: myDrawer(), //sacar menu de un costado
    );
  }

  Widget myBody() {
    return Container(
      //color: Colors.black,
      child: ListView(
        children: [
          userWidget("Ava Max","HI!!!","https://cdn.auth0.com/blog/illustrations/flutter.png"),
         userWidget("Sofia RT", "Hw are you??", "https://s1.eestatic.com/2019/10/30/espana/Twitter-Propaganda_electoral-Espana_440718708_136657204_864x486.jpg"),
         userWidget("Carlos","All task","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnd4CcndWRwQF5WQsUswVvKYq0duCkxx12MQ&usqp=CAU"),
          userWidget("Ava Max","HI!!!","https://cdn.auth0.com/blog/illustrations/flutter.png"),
         userWidget("Sofia RT", "Hw are you??", "https://s1.eestatic.com/2019/10/30/espana/Twitter-Propaganda_electoral-Espana_440718708_136657204_864x486.jpg"),
         userWidget("Carlos","All task","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnd4CcndWRwQF5WQsUswVvKYq0duCkxx12MQ&usqp=CAU"),
          userWidget("Ava Max","HI!!!","https://cdn.auth0.com/blog/illustrations/flutter.png"),
         userWidget("Sofia RT", "Hw are you??", "https://s1.eestatic.com/2019/10/30/espana/Twitter-Propaganda_electoral-Espana_440718708_136657204_864x486.jpg"),
         userWidget("Carlos","All task","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnd4CcndWRwQF5WQsUswVvKYq0duCkxx12MQ&usqp=CAU"),
          userWidget("Ava Max","HI!!!","https://cdn.auth0.com/blog/illustrations/flutter.png"),
         userWidget("Sofia RT", "Hw are you??", "https://s1.eestatic.com/2019/10/30/espana/Twitter-Propaganda_electoral-Espana_440718708_136657204_864x486.jpg"),
         userWidget("Carlos","All task","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnd4CcndWRwQF5WQsUswVvKYq0duCkxx12MQ&usqp=CAU"),
        ],
      ),
    );
  }

  //!mi appbar
  Widget myAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff517DA2),
      title: Text("Telegram"),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            Navigator.pushNamed(context, 'secondScrean');
          },
        ),
      ],
    );
  }

  Widget userWidget(String name,String message,String path) {
    return Container(
      // color: Colors.green,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.4,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //+++++++++++++++++++++++++
          Row(
            // mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              //image
              imageWidget(path),
              SizedBox(width: 15),
              //message and username(ROW)
              userMessage(name,message),
            ],
          ),
          //+++++++++++++++++++++++++++

          //++COLUM right

          //date and quantity(ROW)
          dateQuantity(),
        ],
      ),
    );
  }

  Widget imageWidget(String ruta) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 10,
      ),
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          //color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(ruta
                ),
          ),
        ),
      ),
    );
  }

  Widget userMessage(String name,String  mensaje) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          mensaje,
          style: TextStyle(
            color: Color(0xff8D8D8D),
            fontSize: 19,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget dateQuantity() {
    return Column(
      children: [
        Text("15: 00 PM"),
        Container(
          decoration: BoxDecoration(
            color: Color(0xff4ECC5E),
            borderRadius: BorderRadius.circular(100),
            //borderRadius: B
          ),
          child: Text(
            "56",
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ),
      ],
    );
  }
}
