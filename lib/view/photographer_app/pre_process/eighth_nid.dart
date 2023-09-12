import 'package:checking_flutter/view/photographer_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'nineth_nid_photo.dart';
import 'tenth_profile_photo.dart';

class NidInformation extends StatefulWidget {
  const NidInformation({Key? key}) : super(key: key);
  @override
  State<NidInformation> createState() => _NidInformationState();
}

class _NidInformationState extends State<NidInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.deepOrange
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('DG Company'),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[100],
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text('Welcome, Mr.X',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),textAlign: TextAlign.start,),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          height: 20,
                          child: Text('Required steps',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        const SizedBox(height: 15,),
                        const SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: Text('Here is what you need to do to set up your account',style: TextStyle(fontSize: 18),),
                        ),
                        const SizedBox(height: 15,),
                        Container(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const NidPhoto(),));
                                  },
                                  child: const Card(
                                    child: ListTile(
                                      title: Text('NID Front Side'),
                                      subtitle: Text('Recommended next step',style: TextStyle(color: Colors.blue),),
                                      leading: Icon(Icons.notes),
                                      trailing: Icon(Icons.arrow_forward_ios_sharp),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePhoto(),));
                                  },
                                  child: const Card(
                                    child: ListTile(
                                      title: Text('Profile Photo'),
                                      subtitle: Text('Get Started'),
                                      leading: Icon(Icons.notes),
                                      trailing: Icon(Icons.arrow_forward_ios_sharp),
                                    ),
                                  ),
                                )
                              ],
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PhotographerHome(),));
            },
            child: Container(
              margin: const EdgeInsets.all(15),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              child: const Center(child: Text('Completed',style: TextStyle(fontSize: 18,color: Colors.white),textAlign: TextAlign.center,)),
            ),
          )

        ],
      ),
    );
  }
}
