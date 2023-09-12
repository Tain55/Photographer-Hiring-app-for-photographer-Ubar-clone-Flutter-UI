import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80,),
          const SizedBox(
            height: 35,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('Wallet',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
            width: double.infinity,
            height: 350,
            color: Colors.grey[100],
            padding: const EdgeInsets.all(40),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Balance',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 330,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('BDT283.25',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                          TextButton(child: const Icon(Icons.arrow_forward_ios_sharp,size: 40,color: Colors.grey,), onPressed: (){},)
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const SizedBox(width: 270, child: Text('Add the bank account where you want to receive payouts',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
                    const SizedBox(height: 45,),
                    Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),color: Colors.yellow),
                      child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.add,color: Colors.white,size: 40,), label: const Text('Add bank account',style: TextStyle(),),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)
                          ),
                          primary: Colors.orange,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(border: Border(bottom: BorderSide(width: .05,color: Colors.black))),
            child: Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.credit_card,size: 30,color: Colors.black,),
                SizedBox(width: 15,),
                Text('Payment Methods', style: TextStyle(fontSize: 17,color: Colors.black)),
              ]
            ),
            //make it clickable************************
          ),
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(border: Border(bottom: BorderSide(width: .05,color: Colors.black))),
            child: Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.question_mark_outlined,size: 30,color: Colors.black,),
                  SizedBox(width: 15,),
                  Text('Help', style: TextStyle(fontSize: 17,color: Colors.black)),
                ]
            ),
            //make it clickable************************
          )
        ],
      ),
    );
  }
}
