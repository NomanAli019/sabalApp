import 'package:flutter/material.dart';
import 'package:newapp/screens/settingsscreen.dart';
import '../themes/LoginPageThemes/hometheme.dart';
import 'canopy_details.dart';

class indexpage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<indexpage> {
  bool isSelected = false;

  bool isTrackSelected = false;
  bool isReadySelected = false;
  bool isFoldSelected = false;
  bool isUnfoldSelected = false;

  final List<Map<String, String>> fleetdata = [
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.3", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.3", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.3", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.3", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.4", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.3", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.4", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.4", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.3", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.4", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.4", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.3", "Error": "A14.1"},
    {"Fleet": "Alfah14a", "Status": "Tracking", "kW": "22.4", "Error": "A14.1"},
  ];

  late final List<bool> isSelectedList;

  _IndexPageState() {
    isSelectedList = List<bool>.filled(fleetdata.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCE6F7), // Background color
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 11.0, right: 11.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                // Text "Sabal" at the start
                Text(
                  "Sabal",
                  style: headings(),
                ),

                Spacer(),

                // Settings Icon
                Container(
                  width: 22,
                  height: 22,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SettingS()),
                      );
                    },
                    child: Image.asset('assets/images/settings.png'),
                  )
                ),
                SizedBox(width: 10),

                // Help Icon
                Container(
                  width: 22,
                  height: 22,
                  child: Image.asset('assets/images/help-circle.png'),
                ),
                SizedBox(width: 10),

                // Logout Icon
                Container(
                  width: 22,
                  height: 22,
                  child: Image.asset('assets/images/log-out.png'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Sabal Solar Canopy Fleet", style: subheading()),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: Image.asset("assets/images/profile.png"),
                ),
                Text("Sol Ecolution", style: sub2heading()),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text("Fleet List", style: sub3heading()),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelected = !isSelected; // Toggle state
                      isSelectedList.fillRange(0, isSelectedList.length, isSelected);
                      if (isSelected) {
                        print("All selected");
                      } else {
                        print("Unselect All");
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected ? Colors.green : Colors.transparent,
                    foregroundColor: isSelected ? Colors.white : Colors.black,
                    shadowColor: Colors.transparent,
                    side: BorderSide(
                      color: isSelected ? Colors.green : Color(0xFFAEBACD),
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  ),
                  child: Text(
                    isSelected ? "Unselect All" : "Select All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 5),
              child: Row(
                children: [
                  Expanded(child: Center(child: Text("Fleet List", style: listviewstyle()))),
                  Expanded(child: Center(child: Text("Status", style: listviewstyle()))),
                  Expanded(child: Center(child: Text("kW", style: listviewstyle()))),
                  Expanded(child: Center(child: Text("Error", style: listviewstyle()))),
                  SizedBox(width: 40), // Space for the radio button
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: SingleChildScrollView(
                child: Column(
                  children: fleetdata.map((data) {
                    int index = fleetdata.indexOf(data); // Get the index of the current item
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Center(child: Text(data["Fleet"]!))),
                          Expanded(child: Center(child: Text(data["Status"]!))),
                          Expanded(child: Center(child: Text(data["kW"]!))),
                          Expanded(child: Center(child: Text(data["Error"]!))),
                          Radio(
                            value: index,
                            groupValue: isSelectedList[index] ? index : null,
                            onChanged: (value) {
                              setState(() {
                                isSelectedList[index] = !isSelectedList[index];
                                print(isSelectedList[index] ? "One selected" : "Unselected");
                              });
                            },
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              // Center-align the button
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
                SizedBox(width: 20,),
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
                SizedBox(width: 20,),
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
                SizedBox(width: 20,),
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
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CanopyDetailsPage()),
                );
              }, // Call _handleLogin on press
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0CB33B),
                padding: EdgeInsets.symmetric(vertical: 13),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
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