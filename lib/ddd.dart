 /*
 Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: listWidget(),
              ),
---------

  Widget listWidget() {
    return Container(
      //color: Colors.black,
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          //all i will need,image,name.price
          desingcardWidget(
              "assets/1.png", Color(0xffECE3E8), "Wheat field", "\$ 564"),
          desingcardWidget(
              "assets/2.png", Color(0xffF2F6F3), "Green Ocean", "\$ 850"),
          desingcardWidget(
              "assets/3.png", Color(0xffECE3E8), "Sun Day", "\$ 500"),
          desingcardWidget(
              "assets/4.png", Color(0xffF2F6F3), "Brown earth", "\$ 205"),
          // desingcardWidget(),
          // desingcardWidget(),
        ],
      ),
    );
  }
-------------------------

 ///the vallue recive in this wiget these in english
  Widget desingcardWidget(
      String path, Color colorBox, String name, String price) {
    return Padding(
      //espace between contenedores
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imageWidget(path, colorBox),
            SizedBox(
              height: 15,
            ),
            namePriceWidget(name, price),

            // Text("wheat field"),
            // Text("\$ 564"),
          ],
        ),
      ),
    );
  }
  //////////////////*********** */
  ///  Widget imageWidget(String path, Color colorBox) {
      Widget imageWidget(String path, Color colorBox) {
    return Card(
      elevation: 15,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(70),
      ),
      child: Container(
        height: 220,
        width: 200,
        decoration: BoxDecoration(
          color: colorBox,
          image: DecorationImage(
            image: AssetImage(path),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }*/