import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoCategorySelection extends StatefulWidget {
  const PhotoCategorySelection({Key? key}) : super(key: key);

  @override
  State<PhotoCategorySelection> createState() => _PhotoCategorySelectionState();
}

class _PhotoCategorySelectionState extends State<PhotoCategorySelection> {
  bool portrait = false;
  bool fashion = false;
  bool architectural = false;
  bool event = false;
  bool wedding = false;
  bool product = false;
  bool sports = false;
  bool commercial = false;
  bool pet = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photography Category"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(

            value: portrait,
            onChanged: (val){
              setState(() {
                portrait = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Portrait"),
          ),
          CheckboxListTile(
            value: fashion,
            onChanged: (val){
              setState(() {
                fashion = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Fashion"),
          ),
          CheckboxListTile(
            value: architectural,
            onChanged: (val){
              setState(() {
                architectural = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Architectural"),
          ),
          CheckboxListTile(
            value: event,
            onChanged: (val){
              setState(() {
                event = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Event"),
          ),
          CheckboxListTile(
            value: wedding,
            onChanged: (val){
              setState(() {
                wedding = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Wedding"),
          ),
          CheckboxListTile(
            value: product,
            onChanged: (val){
              setState(() {
                product = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Product"),
          ),
          CheckboxListTile(
            value: sports,
            onChanged: (val){
              setState(() {
                sports = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Sports"),
          ),
          CheckboxListTile(
            value: commercial,
            onChanged: (val){
              setState(() {
                commercial = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Commercial"),
          ),
          CheckboxListTile(
            value: pet,
            onChanged: (val){
              setState(() {
                pet = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Pet"),
          ),

        ],
      ),

    );
  }
}
