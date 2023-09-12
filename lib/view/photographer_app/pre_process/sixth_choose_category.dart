import 'package:checking_flutter/view/photographer_app/pre_process/twelveth_select_videography.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home_page.dart';
import 'eleventh_photo_category_selection.dart';
import 'seventh_thanks.dart';

class ChooseCategory extends StatefulWidget {
  const ChooseCategory({Key? key}) : super(key: key);

  @override
  State<ChooseCategory> createState() => _ChooseCategoryState();
}

class _ChooseCategoryState extends State<ChooseCategory> {
  bool _isSelected_photo = false;
  bool _isSelected_video = false;
  bool _isSelected_cinema = false;
  bool more_option_photo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('DG Company'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      Container(
                        width: double.infinity,
                        child: Text('Choolse how you wolud like to earn with DG Company',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 25,),

                      Container(
                        width: double.infinity,
                        child: Text('You can choose one or more jobs depending on your skills.',style: TextStyle(fontSize: 18,),),
                      ),
                      SizedBox(height: 20,),

                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 160,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border.all(
                                      width: .5,
                                      color: Colors.orangeAccent
                                  ),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(width: 49,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          gradient: LinearGradient(
                                              colors: [Colors.yellow,Colors.red],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight
                                          ),
                                        ),
                                        child: Icon(Icons.camera_alt_outlined,color: Colors.white,size:50,),
                                      ),
                                      Container(
                                        width: 200,
                                        child: Text('Photography',style: TextStyle(fontSize: 22,color: (_isSelected_photo == false) ? Colors.black:Colors.orange[700],),textAlign: TextAlign.center,),

                                      ),
                                      Container(
                                        child: ChoiceChip(
                                          selectedColor: Colors.lightGreen,
                                          label: Text('Select',style: TextStyle(color: (_isSelected_photo == false) ? Colors.black:Colors.white,),),
                                          selected: _isSelected_photo,
                                          onSelected: (newBoolValue){
                                            setState(() {
                                              _isSelected_photo = newBoolValue;
                                            });
                                          },
                                          avatar: Icon(FontAwesomeIcons.check,color: (_isSelected_photo == false) ? Colors.black:Colors.white,),
                                        ),
                                      )
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoCategorySelection()));
                                    },
                                    child: Container(
                                      height: 130,
                                      width: 49,
                                      child: Icon(Icons.arrow_forward_ios,color: (_isSelected_photo == false) ? Colors.black:Colors.redAccent,),

                                    ),
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 160,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border.all(
                                      width: .5,
                                      color: Colors.orangeAccent
                                  ),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Row(
                                children: [
                                  Container(width: 49,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            gradient: LinearGradient(
                                                colors: [Colors.purple,Colors.red],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight
                                            )
                                        ),
                                        child: Icon(Icons.videocam_outlined,color: Colors.white,size:50,),
                                      ),
                                      Container(
                                        width: 200,
                                        child: Text('Videography',style: TextStyle(fontSize: 22,color: (_isSelected_video == false) ? Colors.black:Colors.orange[700],),textAlign: TextAlign.center,),

                                      ),
                                      Container(
                                        child: ChoiceChip(
                                          selectedColor: Colors.lightGreen,
                                          label: Text('Select',style: TextStyle(color: (_isSelected_video == false) ? Colors.black:Colors.white,)),
                                          selected: _isSelected_video,
                                          onSelected: (newBoolValue){
                                            setState(() {
                                              _isSelected_video = newBoolValue;
                                            });
                                          },
                                          avatar: Icon(FontAwesomeIcons.check,color: (_isSelected_video == false) ? Colors.black:Colors.white,),
                                        ),
                                      )
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => VideoCategorySelection()));
                                    },
                                    child: Container(
                                      height: 130,
                                      width: 49,
                                      child: Icon(Icons.arrow_forward_ios,color: (_isSelected_video == false) ? Colors.black:Colors.redAccent,),

                                    ),
                                  ),

                                ],
                              ),

                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 160,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border.all(
                                      width: .5,
                                      color: Colors.orangeAccent
                                  ),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        gradient: LinearGradient(
                                            colors: [Colors.red,Colors.blue],
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight
                                        )
                                    ),
                                    child: Icon(Icons.movie_outlined,size:50,color: Colors.white,),
                                  ),
                                  Container(
                                    width: 200,
                                    child: Text('Cinematography',style: TextStyle(fontSize: 22,color: (_isSelected_cinema == false) ? Colors.black:Colors.orange[700],),textAlign: TextAlign.center,),

                                  ),
                                  Container(
                                    child: ChoiceChip(
                                      selectedColor: Colors.lightGreen,
                                      label: Text('Select',style: TextStyle(color: (_isSelected_cinema == false) ? Colors.black:Colors.white,)),
                                      selected: _isSelected_cinema,
                                      onSelected: (newBoolValue){
                                        setState(() {
                                          _isSelected_cinema = newBoolValue;
                                        });
                                      },
                                      avatar: Icon(FontAwesomeIcons.check,color: (_isSelected_cinema == false) ? Colors.black:Colors.white,),
                                    ),
                                  )
                                ],
                              ),

                            ),
                            SizedBox(height: 15,)
                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksForInformation(),));
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10,),
                  color: Colors.orange,
                ),
                child: Center(child: Text('Continue',style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
