import 'package:flutter/material.dart';


class InboxHome extends StatefulWidget {
  const InboxHome({Key? key}) : super(key: key);

  @override
  State<InboxHome> createState() => _InboxHomeState();
}

class _InboxHomeState extends State<InboxHome> {
  List<String> items = [
    'Uber er bokeya porisodh kora ekhon onek sohoj',
    'apnar saptahik digital strip statement',
    'shudhu matro ekti phone call er maddhome apnar bondhuder uber e',
    'sukhobor!!! uber aponar jonZ drop location feature calu koreche',
    'Uber er bokeya porisodh kora ekhon onek sohoj',
    'apnar saptahik digital strip statement',
    'shudhu matro ekti phone call er maddhome apnar bondhuder uber e',
    'sukhobor!!! uber aponar jonZ drop location feature calu koreche',
    'Uber er bokeya porisodh kora ekhon onek sohoj',
    'apnar saptahik digital strip statement',
    'shudhu matro ekti phone call er maddhome apnar bondhuder uber e',
    'sukhobor!!! uber aponar jonZ drop location feature calu koreche',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            /*return  Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.5,color: Colors.black))),
              child: Row(
                children: [
                  Container(
                    child: Icon(Icons.camera_alt,size: 40,color: Colors.black,),
                  ),
                  Column(
                    children: [
                      Container(width:double.infinity,child: Text(item,style: const TextStyle(fontSize: 20),)),
                      Container(width:double.infinity,child: Text('Notification $index')),
                    ],
                  )
                ],
              ),*/

              return Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.15,color: Colors.black))),
                padding: EdgeInsets.only(top: 4,bottom: 25),
                child: ListTile(
                  focusColor: Colors.grey,
                  leading: Icon(Icons.camera, size: 31, color: Colors.deepOrange[400],),
                  title: Text(item,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  subtitle: Text('Notification $index'),
            ),
              );
          })

    );
  }
}
