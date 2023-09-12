import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hireForeLatter extends StatefulWidget {
  const hireForeLatter({Key? key}) : super(key: key);

  @override
  State<hireForeLatter> createState() => _hireForeLatterState();
}

class _hireForeLatterState extends State<hireForeLatter> {

  late TimeOfDay time;
  late TimeOfDay picked;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time = TimeOfDay.now();
  }

  Future<Null> selectTime (BuildContext context) async{
    picked = (await showTimePicker(
        context: context,
        initialTime: time))!;
  }


  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: (){
                  selectTime(context);
                  print(time);
                },
                icon: Icon(Icons.alarm),
              iconSize: 25,
            ),
          ],
        ),
      ),
    ));
  }
}
