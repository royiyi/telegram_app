import 'package:flutter/material.dart';

class SecondScrean extends StatelessWidget {
  const SecondScrean({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyappBar(),
      body: twoBody(),
    );
  }

  Widget MyappBar() {
    return AppBar(
      backgroundColor: Color(0xff517DA2),
      title: TextField(
        //change of curso from color
        //cursorColor: Color(0xff517DA2),
        decoration: InputDecoration(
          filled: true, //for than  tenga opacidad
          //fillColor: Colors.white.withOpacity(0.3),
          //border: OutlineInputBorder(),
          //labelText: "Username",
          labelStyle: TextStyle(
            color: Color(0xff517DA2),
          ),
          /* prefixIcon: Icon(
          Icons.email, //prefix=prefijo
          color: Colors.lightGreenAccent,
        ),*/
        ),
      ),
    );
  }

  Widget twoBody() {
    return Container(
      // color: Colors.black54,
      child: ListView(
        children: [
          //PEOPLE

          recycledWord("Personas", ""),

          //LIST CONTACTS(listview)
          horizontalistWidget(),

          //Recentclear(containes)
          recycledWord("Recientes", "Limpiar"),

          //contatactsImge(list or colum)
          listUserWidget(),

          ///Expanded(child: R)
        ],
      ),
    );
  }

  Widget recycledWord(String word, String word2) {
    return Container(
      width: double.infinity,
      color: Color(0xffF4F5F7),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              word,
              style: TextStyle(fontSize: 20),
            ),
            Text(word2,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget horizontalistWidget() {
    return Container(
     // color: Colors.grey,
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          belowNameWidget("Carol","https://cdn.pixabay.com/photo/2020/11/08/09/41/deer-5723225_960_720.jpg"),
          belowNameWidget("Andres","https://cdn.pixabay.com/photo/2014/08/01/00/08/pier-407252_960_720.jpg"),
          belowNameWidget("Pedrito","https://cdn.pixabay.com/photo/2015/04/23/21/59/hot-air-balloon-736879_960_720.jpg"),
          belowNameWidget("Roanldo","https://cdn.pixabay.com/photo/2013/12/17/20/10/bubbles-230014__180.jpg"),
          belowNameWidget("Carla","https://cdn.pixabay.com/photo/2020/09/27/04/15/cat-5605615_960_720.jpg"),
          belowNameWidget("Jose", "https://cdn.pixabay.com/photo/2014/05/02/21/50/laptop-336378__180.jpg"),
       
        ],
      ),
    );
  }

  Widget belowNameWidget(String name,String path) {
    return Padding(
      padding: const EdgeInsets.only(top: 9, left: 9, right: 9),
      child: Container(
        //height: 150,
        //color: Colors.green,
        //width: 300,
        child: Column(
          children: [
            imageWidget(path),
            Text(name,
            style: TextStyle(
              fontSize: 20,
            ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageWidget(String ruta) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        top: 10,
      ),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          //color: Colors.red,

          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                ruta),
          ),
        ),
      ),
    );
  }

  Widget listUserWidget() {
    return Expanded(
        child: Column(
      children: [
        contactsWidget("Roanldo","https://cdn.pixabay.com/photo/2013/12/17/20/10/bubbles-230014__180.jpg","Hace unos minutos"),
        contactsWidget("Carla","https://cdn.pixabay.com/photo/2020/09/27/04/15/cat-5605615_960_720.jpg", "Recientemente conectado "),
        contactsWidget("Jose Palmo", "https://cdn.pixabay.com/photo/2014/05/02/21/50/laptop-336378__180.jpg", "Hace un siglo"),
        contactsWidget("Carol","https://cdn.pixabay.com/photo/2020/11/08/09/41/deer-5723225_960_720.jpg","Hace unos minutos"),
        contactsWidget("Carla","https://cdn.pixabay.com/photo/2020/09/27/04/15/cat-5605615_960_720.jpg", "Recientemente conectado "),
        contactsWidget("Andres","https://cdn.pixabay.com/photo/2014/08/01/00/08/pier-407252_960_720.jpg", "Hace un siglo"),
        contactsWidget("Roanldo","https://cdn.pixabay.com/photo/2013/12/17/20/10/bubbles-230014__180.jpg","Hace unos minutos"),
        contactsWidget("Carla","https://cdn.pixabay.com/photo/2020/09/27/04/15/cat-5605615_960_720.jpg", "Recientemente conectado "),
        contactsWidget("Jose Palmo", "https://cdn.pixabay.com/photo/2014/05/02/21/50/laptop-336378__180.jpg", "Hace un siglo"),
      ],
    ));
  }

  Widget contactsWidget(String name,String ruta,String estado) {
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
              imageWidget(ruta),
              SizedBox(width: 15),
              //message and username(ROW)
              userMessage(name,estado),
            ],
          ),
          //+++++++++++++++++++++++++++
          //++COLUM right
          //date and quantity(ROW)
          //dateQuantity(),
        ],
      ),
    );
  }

  Widget userMessage(String name,String status){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,
        style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(status,
        style:  TextStyle(
            color: Color(0xff8D8D8D),
            fontSize: 19,
           // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
