import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://www.hospitalitynet.org/picture/xxl_153141017.jpg?t=1651672064"),fit:  BoxFit.cover)
                ),
                child: Container(
                  decoration: const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
                  child: Column(

                    children: [
                      const SizedBox(height: 100,),
                      const Text("Best Hotels Ever",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 20,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for hotels...",
                            prefixIcon: Icon(Icons.search),

                          ),
                        ),
                      )

                    ],
                  ),
                ),
              )),
          Expanded(
              flex:5,
              child: Container(
                margin: EdgeInsets.only(left: 15,right: 10),
                child: ListView(
                  children: [
                    Text("Businness Hotels",style: TextStyle(fontSize: 20,color: Colors.black45),),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          HotelsItems("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfp6hPyaDQtDH6YvUOiSgsez9tAlytky0t8EmIBGht4zt5pmwSm8f0IfAfs02uxyv_ztM&usqp=CAU"),
                          HotelsItems("https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg"),
                          HotelsItems("https://cf.bstatic.com/xdata/images/xphoto/540x405/12097111.jpg?k=ab8d257011c475ed67db40f6ad3dc6339a0ca882f606e5585365ab16411b00d1&o="),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Airport Hotels",style: TextStyle(fontSize: 20,color: Colors.black45),),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          HotelsItems("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfp6hPyaDQtDH6YvUOiSgsez9tAlytky0t8EmIBGht4zt5pmwSm8f0IfAfs02uxyv_ztM&usqp=CAU"),
                          HotelsItems("https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg"),
                          HotelsItems("https://cf.bstatic.com/xdata/images/xphoto/540x405/12097111.jpg?k=ab8d257011c475ed67db40f6ad3dc6339a0ca882f606e5585365ab16411b00d1&o="),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Resort Hotels",style: TextStyle(fontSize: 20,color: Colors.black45),),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          HotelsItems("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfp6hPyaDQtDH6YvUOiSgsez9tAlytky0t8EmIBGht4zt5pmwSm8f0IfAfs02uxyv_ztM&usqp=CAU"),
                          HotelsItems("https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg"),
                          HotelsItems("https://cf.bstatic.com/xdata/images/xphoto/540x405/12097111.jpg?k=ab8d257011c475ed67db40f6ad3dc6339a0ca882f606e5585365ab16411b00d1&o="),
                        ],
                      ),
                    )

                  ],
                )),
              )
        ],
      ),
    );
  }
  Widget HotelsItems(String image){
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 180,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover)
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Hotel 1", style: TextStyle(color: Colors.white,fontSize: 20),),
            Icon(Icons.favorite, color: Colors.pink[600],)
          ],
        ),
      )
    );
  }
}
