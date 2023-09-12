import 'package:checking_flutter/view/photographer_app/Wallet/wallet.dart';
import 'package:checking_flutter/view/photographer_app/promotions/promotions.dart';
import 'package:checking_flutter/view/photographer_app/refer_friends/refer_friends.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'Account/account_profile.dart';
import 'Earnings/See Details/see_details.dart';
import 'Earnings/earnings.dart';
import 'Inbox/inbox_home.dart';

class PhotographerHome extends StatefulWidget {
  const PhotographerHome({Key? key}) : super(key: key);

  @override
  State<PhotographerHome> createState() => _PhotographerHomeState();
}

class _PhotographerHomeState extends State<PhotographerHome> with TickerProviderStateMixin {
  //varialbes of photography
  bool portrait = true;
  bool fashion = false;
  bool architectural = false;
  bool event = false;
  bool wedding = false;
  bool product = false;
  bool sports = false;
  bool commercial = false;
  bool pet = false;



  bool isVisible = false;
  bool goVisible = true;
  String offLine = "You are offline";
  bool state = true;
  String buttonState = "Online";



  final GlobalKey<ScaffoldState>_scaffoldKEY = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      key:_scaffoldKEY,
//////////////////////////////////////////////////////////////drawer//////////////////////////////////////////////////////////start
      drawer: Drawer(child: ListView(children: [
        DrawerHeader(
            child: Container(
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage('images/profile_pic.jpg'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tauhidul", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Icon(Icons.star,),
                        Text("3.9", style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
                      ],)
                    ],
                  )
                ],
              ),
            )
        ),
        ListTile(title: const Text('Inbox',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const InboxHome()));},),
        const Divider(thickness: .05,),
        ListTile(title: const Text('Refer Friends',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ReferFriends()));}),
        const Divider(thickness: .05,),
        ListTile(title: const Text('Promotions',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Promotions(),));},),
        const Divider(thickness: .05,),
        ListTile(title: const Text('Earnings',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Earnings()));},),
        const Divider(thickness: .05,),
        ListTile(title: const Text('Wallet',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Wallet()));}),
        const Divider(thickness: .05,),
        ListTile(title: const Text('Account',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Account()));}),
        const Divider(thickness: .6,),
        ListTile(title: Text('COVID-19'),),
        ListTile(title: Text('Help'),),
        ListTile(title: Text('Tips and info',style: TextStyle(),),),
      ],),),
//////////////////////////////////////////////////////////////drawer//////////////////////////////////////////////////////////finish


      body: Container(

        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/google_map.jpg'),
            fit: BoxFit.fill,
          )
        ),
        child: Column(

          children: [
//********************size nie jhamela ase((((((((go button er position))))))))
            SizedBox(
              height: 670,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 45,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(children: [
                        IconButton(icon: const Icon(Icons.menu,color: Colors.black,size: 30,),
                          onPressed: () => _scaffoldKEY.currentState?.openDrawer()
                        )
                      ],),

                      const SizedBox(width: 20,),

                      SizedBox(
                        height: 60,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('BDT',textAlign: TextAlign.center, style: TextStyle(color: Colors.green,fontSize: 25),),
                              Text(' 179.13',textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 25),),
                            ],
                          )

                        ),
                      ),

                      const SizedBox(width: 20,),
                      TextButton(onPressed: (){}, child: const Icon(Icons.search_rounded,size: 30,color: Colors.black,)),
                    ],
                  ),
                  SizedBox(height: 10,),

/////////////////////////////////////////////////////////////////top down///////////////////////////////////////// start
                  Visibility(
                    visible: isVisible,
                      child: SizedBox(
                        height: 220,
                        width: 390,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: 300,
                              width: 300,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black87),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("\$179.13", textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.green),),
                                    SizedBox(height: 5,),
                                    Text("Today", textAlign: TextAlign.center, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                                    SizedBox(height: 20,),
                                    RatingBar.builder(
                                  unratedColor: Colors.grey,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                )

                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 300,
                              width: 300,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black87),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("\$83.40", textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.green),),
                                    SizedBox(height: 5,),
                                    Text("Yesterday", textAlign: TextAlign.center, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                                    SizedBox(height: 20,),
                                    RatingBar.builder(
                                      unratedColor: Colors.grey,
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    )

                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 300,
                              width: 300,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black87),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("\$618.38", textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.green),),
                                    SizedBox(height: 5,),
                                    Text("This Week", textAlign: TextAlign.center, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                                    SizedBox(height: 20,),
                                    RatingBar.builder(
                                      unratedColor: Colors.grey,
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),
/////////////////////////////////////////////////////////////////top down///////////////////////////////////////// close

            Visibility(
              visible: goVisible,
              child: SizedBox(
                height: 80,
                width: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)
                    )
                  ),
                  child: const Text('Go',textAlign: TextAlign.center,style:TextStyle(fontSize: 23),),
                  onPressed: (){
                    setState(() {
                      goVisible = !goVisible;
                      offLine = "You are online";
                      buttonState = "Offline";
                    });
                  },
                )
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(top: BorderSide(width: .1,color: Colors.orange))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: const Icon(Icons.dashboard_rounded,size: 30,color: Colors.blueGrey,),
                          ),
                          onTap: (){
                            showModalBottomSheet(
                              isScrollControlled: true,
                                context: context,
                                builder: ((context) => Column(
                                  children: [
                                    const SizedBox(height: 40,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: (){},
                                          icon: const Icon(Icons.arrow_back,color: Colors.black,size: 30,),
                                          label:const Text("") ,
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.grey[50],
                                              elevation: 0
                                          ),
                                        ),

                                        const Text("Category",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

                                        ElevatedButton.icon(
                                          onPressed: (){},
                                          icon: Icon(Icons.arrow_back,color: Colors.grey[50],),
                                          label:const Text("") ,
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.grey[50],
                                              elevation: 0
                                          ),
                                        ),
                                      ],
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 30,),
                                          TabBar(
                                            labelPadding: const EdgeInsets.only(left: 0, right: 0
                                            ),
                                            controller: tabController,
                                            labelColor:Colors.black,
                                            unselectedLabelColor: Colors.grey,

                                            tabs: const [
                                              Tab(text: "Photography",),
                                              Tab(text: "Videography",),
                                              Tab(text: "Cinematography",)
                                            ],
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height-166,
                                            width: double.infinity,
                                            child: TabBarView(
                                              controller: tabController,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10,crossAxisSpacing: 10),
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: Colors.black,width: 4),
                                                          borderRadius: BorderRadius.circular(30),
                                                      ),
                                                      child:Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                        crossAxisAlignment: CrossAxisAlignment.start,

                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Checkbox(
                                                                value: portrait,
                                                                onChanged: (newBool) {
                                                                  setState(() {
                                                                    portrait = !portrait ;
                                                                    print(portrait);
                                                                  });
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10),
                                                                child: Icon(Icons.camera_alt_outlined,size: 40,),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                child: Text("Portrait", style: TextStyle( fontSize: 18),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),


                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: Colors.black,width: 4),
                                                          borderRadius: BorderRadius.circular(30),
                                                      ),
                                                      child:Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                        crossAxisAlignment: CrossAxisAlignment.start,

                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Checkbox(
                                                                value: portrait,
                                                                onChanged: (newBool) {
                                                                  setState(() {
                                                                    portrait = !portrait ;

                                                                    print(portrait);
                                                                  });
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10),
                                                                child: Icon(Icons.camera_alt_outlined,size: 40,),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                child: Text("Fashion", style: TextStyle( fontSize: 18),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),


                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: Colors.black,width: 4),
                                                          borderRadius: BorderRadius.circular(30),
                                                      ),
                                                      child:Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                        crossAxisAlignment: CrossAxisAlignment.start,

                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Checkbox(
                                                                value: portrait,
                                                                onChanged: (newBool) {
                                                                  setState(() {
                                                                    portrait = !portrait ;

                                                                    print(portrait);
                                                                  });
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10),
                                                                child: Icon(Icons.camera_alt_outlined,size: 40,),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                child: Text("Architectural", style: TextStyle( fontSize: 18),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),



                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: Colors.black,width: 4),
                                                          borderRadius: BorderRadius.circular(30),
                                                      ),
                                                      child:Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                        crossAxisAlignment: CrossAxisAlignment.start,

                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Checkbox(
                                                                value: portrait,
                                                                onChanged: (newBool) {
                                                                  setState(() {
                                                                    portrait = !portrait ;

                                                                    print(portrait);
                                                                  });
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10),
                                                                child: Icon(Icons.camera_alt_outlined,size: 40,),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                child: Text("Event", style: TextStyle( fontSize: 18),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),



                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: Colors.black,width: 4),
                                                          borderRadius: BorderRadius.circular(30),
                                                      ),
                                                      child:Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                        crossAxisAlignment: CrossAxisAlignment.start,

                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Checkbox(
                                                                value: portrait,
                                                                onChanged: (newBool) {
                                                                  setState(() {
                                                                    portrait = !portrait ;

                                                                    print(portrait);
                                                                  });
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10),
                                                                child: Icon(Icons.camera_alt_outlined,size: 40,),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                child: Text("Wedding", style: TextStyle( fontSize: 18),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),



                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: Colors.black,width: 4),
                                                          borderRadius: BorderRadius.circular(30),
                                                      ),
                                                      child:Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                        crossAxisAlignment: CrossAxisAlignment.start,

                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Checkbox(
                                                                value: portrait,
                                                                onChanged: (newBool) {
                                                                  setState(() {
                                                                    portrait = !portrait ;

                                                                    print(portrait);
                                                                  });
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10),
                                                                child: Icon(Icons.camera_alt_outlined,size: 40,),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                child: Text("Product", style: TextStyle( fontSize: 18),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),



                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: Colors.black,width: 4),
                                                          borderRadius: BorderRadius.circular(30),
                                                      ),
                                                      child:Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                        crossAxisAlignment: CrossAxisAlignment.start,

                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Checkbox(
                                                                value: portrait,
                                                                onChanged: (newBool) {
                                                                  setState(() {
                                                                    portrait = !portrait ;

                                                                    print(portrait);
                                                                  });
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10),
                                                                child: Icon(Icons.camera_alt_outlined,size: 40,),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                child: Text("Sports", style: TextStyle( fontSize: 18),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),



                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: Colors.black,width: 4),
                                                          borderRadius: BorderRadius.circular(30),
                                                      ),
                                                      child:Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                        crossAxisAlignment: CrossAxisAlignment.start,

                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Checkbox(
                                                                value: portrait,
                                                                onChanged: (newBool) {
                                                                  setState(() {
                                                                    portrait = !portrait ;

                                                                    print(portrait);
                                                                  });
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10),
                                                                child: Icon(Icons.camera_alt_outlined,size: 40,),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                child: Text("Commercial", style: TextStyle( fontSize: 18),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),



                                                    Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(color: Colors.black,width: 4),
                                                          borderRadius: BorderRadius.circular(30),
                                                      ),
                                                      child:Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                        crossAxisAlignment: CrossAxisAlignment.start,

                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Checkbox(
                                                                value: portrait,
                                                                onChanged: (newBool) {
                                                                  setState(() {
                                                                    portrait = !portrait ;

                                                                    print(portrait);
                                                                  });
                                                                },
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: const [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10),
                                                                child: Icon(Icons.camera_alt_outlined,size: 40,),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                child: Text("Pet", style: TextStyle( fontSize: 18),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),









                                                  ],),
                                                ),
                                                Container(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Edicational", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),


                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Promotional", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),


                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Informational", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),



                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Documentary", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),



                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Entertainment", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),


                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Commercial", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),

                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Event", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),


                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Realestate", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),

                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Weading", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),

                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Testimonial", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),

                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(color: Colors.black,width: 4),
                                                              borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                            crossAxisAlignment: CrossAxisAlignment.start,

                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Checkbox(
                                                                    value: portrait,
                                                                    onChanged: (newBool) {
                                                                      setState(() {
                                                                        portrait = !portrait ;

                                                                        print(portrait);
                                                                      });
                                                                    },
                                                                  )
                                                                ],
                                                              ),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: Icon(Icons.videocam_outlined,size: 40,),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10, bottom: 20),
                                                                    child: Text("Corporate", style: TextStyle( fontSize: 18),),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),




                                                      ],
                                                    )
                                                  ),
                                                ),
                                                Container(
                                                  child: const Center(child: Text("There is no category here.", style: TextStyle(fontSize: 18)))
                                                )

                                              ],
                                            ),
                                          )


                                        ],
                                      ),
                                    ),
                                  ],
                                )
                                ),
                            );
                          },
                        ),
                      ),
                      ElevatedButton(

                        onPressed: (){
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context){
                                return SizedBox(
                                  height: 400,
                                  child: Center(
                                    child: SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(100)
                                          )
                                        ),
                                        child: Text(buttonState,style: const TextStyle(fontSize: 18),),
                                        onPressed: (){
                                          setState(() {
                                            if(goVisible == true){
                                              goVisible = false;
                                              offLine = "You are online";
                                              buttonState = "Offline";
                                            }else{
                                              goVisible = true;
                                              offLine = "You are offline";
                                              buttonState = "Online";
                                            }
                                          });
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              }
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          elevation: 0
                        ),

                        child: Text(offLine,textAlign: TextAlign.center,style: const TextStyle(color: Colors.blueGrey,fontSize: 25),),

                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(Icons.notes,size: 30,color: Colors.blueGrey,),
                      ),
                    ],
                  ),
                  //ekhane ekta button thakbe///ar sei button e cap dile nic theke bottom sheet ber hoye asbe
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
