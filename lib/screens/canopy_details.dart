import 'package:flutter/material.dart';

import '../themes/LoginPageThemes/canopydetailstheme.dart';
import '../themes/LoginPageThemes/hometheme.dart';


class CanopyDetailsPage extends StatefulWidget {
  @override
  _CanopyDetailsPage createState() => _CanopyDetailsPage();
}
class _CanopyDetailsPage extends State<CanopyDetailsPage> {
  bool isTrackSelected = false;
  bool isReadySelected = false;
  bool isFoldSelected = false;
  bool isUnfoldSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F6FC),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F6FC),
        title: Text("Canopy Details" , style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 11.0, right: 11.0),
        child: ListView(
          children: [
            Container(
              width: double.infinity, // Full width
              height: 140.0,          // Custom height
              child:ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10), // Match the container's border radius
                ),
                child: Image.asset(
                  'assets/images/signal-2024-02-14-110631_004 1.png', // Use the relative path here
                  fit: BoxFit.cover,          // Adjust the image to fit the container
                ),
              ),
            ),
            SizedBox(height: 10,),

          Card(
            color: Colors.white,
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Current Performance:',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'Active',
                      style: head1(),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Status:',style:TextStyle(fontSize: 15)),
                    ElevatedButton(
                        style: elevatedButtonStyleStatic(),
                      onPressed: () {
                        // Add functionality for "Unfold" button here
                        print('Unfold button pressed');
                      },
                      child: const Text('Unfold'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
            SizedBox(height: 10,),
            Text("History" ,style: head1(), ),
            SizedBox(height: 10,),
          Card(
              color: Colors.white,
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Device Name',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Alfah14a',
                          style: head2(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Date:',style:TextStyle(fontSize: 15)),
                        Text(
                          '10-05-2024',
                          style: head2(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Status:',style:TextStyle(fontSize: 15)),
                        ElevatedButton(
                          style: elevatedButtonStyleStatic(),
                          onPressed: () {
                            // Add functionality for "Unfold" button here
                            print('Unfold button pressed');
                          },
                          child: const Text('Fold'),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 11,),
            Card(
              color: Colors.white,
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Device Name',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Alfah14a',
                          style: head2(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Date:',style:TextStyle(fontSize: 15)),
                        Text(
                          '10-05-2024',
                          style: head2(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Status:',style:TextStyle(fontSize: 15)),
                        ElevatedButton(
                          style: elevatedButtonStyleStatic(),
                          onPressed: () {
                            // Add functionality for "Unfold" button here
                            print('Unfold button pressed');
                          },
                          child: const Text('Fold'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: elevatedButtonStyle(isTrackSelected),
                  onPressed: () {
                    setState(() {
                      isTrackSelected = !isTrackSelected; // Toggle the button color state
                    });
                    print("Track button clicked");
                  },
                  child: Text("Track"),
                ),
                ElevatedButton(
                  style: elevatedButtonStyle(isReadySelected),
                  onPressed: () {
                    setState(() {
                      isReadySelected = !isReadySelected; // Toggle the button color state
                    });
                    print("Ready button clicked");
                  },
                  child: Text("Ready"),
                ),
                ElevatedButton(
                  style: elevatedButtonStyle(isFoldSelected),
                  onPressed: () {
                    setState(() {
                      isFoldSelected = !isFoldSelected; // Toggle the button color state
                    });
                    print("Fold button clicked");
                  },
                  child: Text("Fold"),
                ),
                ElevatedButton(
                  style: elevatedButtonStyle(isUnfoldSelected),
                  onPressed: () {
                    setState(() {
                      isUnfoldSelected = !isUnfoldSelected; // Toggle the button color state
                    });
                    print("Unfold button clicked");
                  },
                  child: Text("Unfold"),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "© 2024 Graystone Gear LLC.  All Rights Reserved. Support: support@graystonegear.com",
                style: TextStyle(fontSize: 9, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),

          ],
        ),

      ),
    );
  }
}
