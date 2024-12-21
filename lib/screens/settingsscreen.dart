import 'package:flutter/material.dart';

class SettingS extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCE6F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFDCE6F7),
        title: Text("Setting", style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 11.0, right: 11.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Container(

              decoration: BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7),
                  topLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                  bottomLeft: Radius.circular(7)
                ),
                border: Border.all( // Add this to apply a border
                  color: Color(0xFFDCE6F7), // Border color
                  width: 2.0,         // Border width
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: (){
                            print("password clicked");
                          },
                          child: Text("Password changes" , style: TextStyle(fontSize: 18,),),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: (){
                            print("edit clicked");
                          },
                          child: Text("Edit Canopy Identifiers" , style: TextStyle(fontSize: 18,),),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: (){
                            print("system clicked");
                          },
                          child: Text("System Network Setup" , style: TextStyle(fontSize: 18,),),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: (){
                            print("tbd clicked");
                          },
                          child: Text("Tbd" , style: TextStyle(fontSize: 18,),),
                        ),
                      ),

                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),

    );
  }

}