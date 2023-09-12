import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoCategorySelection extends StatefulWidget {
  const VideoCategorySelection({Key? key}) : super(key: key);

  @override
  State<VideoCategorySelection> createState() => _VideoCategorySelectionState();
}

class _VideoCategorySelectionState extends State<VideoCategorySelection> {
  bool educational = false;
  bool promotional = false;
  bool informational = false;
  bool documentary = false;
  bool entertainment = false;
  bool commercial = false;
  bool event = false;
  bool real_estate = false;
  bool wedding = false;
  bool testimonial = false;
  bool corporate = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photography Category"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          CheckboxListTile(

            value: educational,
            onChanged: (val){
              setState(() {
                educational = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Educational"),
          ),
          CheckboxListTile(
            value: promotional,
            onChanged: (val){
              setState(() {
                promotional = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Promotional"),
          ),
          CheckboxListTile(
            value: informational,
            onChanged: (val){
              setState(() {
                informational = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Informational"),
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
            value: documentary,
            onChanged: (val){
              setState(() {
                documentary = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Documentary"),
          ),
          CheckboxListTile(
            value: entertainment,
            onChanged: (val){
              setState(() {
                entertainment = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Entertainment"),
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
            value: testimonial,
            onChanged: (val){
              setState(() {
                testimonial = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Testimonial"),
          ),
          CheckboxListTile(
            value: corporate,
            onChanged: (val){
              setState(() {
                corporate = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Corporate"),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
                child: Text("Done",style: TextStyle(fontSize: 25,color: Colors.white),textAlign: TextAlign.center,),
              ),
              SizedBox(width: 30,)
            ],
          )
        ],
      ),
    );
  }
}
