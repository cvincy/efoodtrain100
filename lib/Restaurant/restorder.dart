import 'package:flutter/material.dart';

class Manageitem extends StatefulWidget {
  const Manageitem({Key? key}) : super(key: key);

  @override
  State<Manageitem> createState() => _ManageitemState();
}
final List<String> containerImages = [
  'images/biri.png',
  'images/poro.png',
  'images/cn.png',
  'images/dosa.png',
];
class _ManageitemState extends State<Manageitem> {
  final List<String> entries = <String>[' Chicken Biriyani', 'Porotta','Chicken Noodles','Masaladosa'];
  final List<String> prices=['150','15','60','120'];

  //final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Overide the default Back button
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left_sharp,color: Colors.blueAccent,),
          label: const Text('Back',style: TextStyle(color:Colors.blueAccent )),
          style: ElevatedButton.styleFrom(

            backgroundColor: Colors.transparent,
            elevation: 0,
          ),

        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // other stuff
        
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications),color: Colors.blueAccent,)
        ],
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [

                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 10),
                  child: TextField (
                    decoration: InputDecoration( border: OutlineInputBorder(),
                        labelText: 'Add image',
                        hintText: 'Image Name'
                    ),
                  ),

                ),


            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
              child: TextField (
                decoration: InputDecoration( border: OutlineInputBorder(),
                    labelText: 'Add food',
                    hintText: 'Enter item Name'
                ),
              ),

            ),

            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
              child: TextField (
                decoration: InputDecoration( border: OutlineInputBorder(),
                    labelText: 'Add price',
                    hintText: 'Enter item price'
                ),
              ),

            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 30,left: 30,right: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.grey.withOpacity(0.5)),
                onPressed: () {},
                child: const Text(
                  'Add item',
                  style: TextStyle(fontSize: 16,
                      color: Colors.black
                  ),
                ),
              ),
            ),



             ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 75,
                  color: Colors.grey.withOpacity(0.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${containerImages[index]}",)
                        )
                        ),
                      ),
                      Center(child: Text(' ${entries[index]}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.183,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                      ),

                      Text('${prices[index]}',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.grey.withOpacity(0.5)),
                onPressed: () {},
                child: const Text(
                  'Delete',
                  style: TextStyle(fontSize: 16,
                      color: Colors.black
                  ),
                ),
              ),
            ),

          ],
        ),
      ),





    );
  }
}
