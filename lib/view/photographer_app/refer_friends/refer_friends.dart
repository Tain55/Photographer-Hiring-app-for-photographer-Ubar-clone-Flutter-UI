import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReferFriends extends StatefulWidget {
  const ReferFriends({Key? key}) : super(key: key);

  @override
  State<ReferFriends> createState() => _ReferFriendsState();
}

class _ReferFriendsState extends State<ReferFriends> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 290,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/refer_friends.jpg"),
                  fit: BoxFit.cover,
                )
            ),
          ),
          TabBar(
            controller: _tabController,
              tabs:[
                Tab(text: "Offers",),
                Tab(text: "Status",),
              ],
            labelColor: Colors.black,

          ),
          Container(
            height: 490,  //problem with height
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
                children: [
                  ListView.builder(itemCount:6 ,itemBuilder: (BuildContext context, int index,) {
                    return Column(
                      children: [
                        Container(
                          height: 300,
                          width: double.infinity,
                          color: Colors.red
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 8,top: 0,right: 8,bottom: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 180,
                                decoration: BoxDecoration( color: Colors.black ,borderRadius: BorderRadius.circular(30)),
                                child: const Center(child: Text('Share your link',style:TextStyle(color: Colors.white,fontSize: 20),)),
                              ),
                              Container(
                                height: 50,
                                width: 180,
                                decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(30)),
                                child: const Center(child: Text('Share your link',style:TextStyle(color: Colors.black,fontSize: 20),)),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },

                  ),
                  Container(
                    height: double.infinity,
                    color: Colors.orangeAccent,
                  )

                ]
            ),

          ),

        ],
      ),
    );
  }
}
