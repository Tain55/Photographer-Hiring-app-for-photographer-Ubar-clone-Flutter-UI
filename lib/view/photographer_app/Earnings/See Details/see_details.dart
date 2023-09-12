import 'package:flutter/material.dart';

class EarningDetails extends StatefulWidget {
  const EarningDetails({Key? key}) : super(key: key);
  @override
  State<EarningDetails> createState() => _EarningDetailsState();
}

class _EarningDetailsState extends State<EarningDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.indigo,
              width: double.infinity,
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Stats",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                    const SizedBox(height: 18,),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2-10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Online", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:Colors.grey[600]),),
                                const SizedBox(height: 5,),
                                Text("18 h 0 m", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.grey[700]),),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/2-10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Trips", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:Colors.grey[600]),),
                                const SizedBox(height: 5,),
                                Text("50", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.grey[700]),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 18,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2-10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Online", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey[600]),),
                          const SizedBox(height: 5,),
                          Text("18 h 0 m", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19 ,color:Colors.grey[700]),),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: .5,
                    ),
                    const Text("How we calculate stats",style: TextStyle(fontSize: 12),),
                    const SizedBox(height: 15,),
                    const Text("Breakdown",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Net Fare", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey[600]),),
                        Text("\$423.61", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ,color:Colors.grey[700]),),
                      ],
                    ),const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Promotions", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey[600]),),
                        Text("\$115.00", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ,color:Colors.grey[700]),),
                      ],
                    ),const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tip", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey[600]),),
                        Text("\$34.34", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ,color:Colors.grey[700]),),
                      ],
                    ),
                    const Divider(
                      thickness: .5,
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Net Fare", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey[600]),),
                        Text("\$572.95", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ,color:Colors.grey[700]),),
                      ],
                    ),
                    const SizedBox(height: 80,),
                    GestureDetector(
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        color: Colors.grey[200],
                        child: Center(child: Text("SEE EARNINGS ACTIVITY",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey[600]),textAlign: TextAlign.center,)),
                      ),
                      onTap: (){},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


