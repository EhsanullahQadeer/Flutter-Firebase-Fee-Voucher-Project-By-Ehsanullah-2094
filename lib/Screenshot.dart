
import 'package:flutter/material.dart';
import'package:screenshot/screenshot.dart';
import 'package:table_desk/table_desk.dart';
class imagescreen extends StatelessWidget {
  String? Name;
  String? LastName;
  String? Email;
  String? phonenumber;
  String? Field;
  String? Fee;
  ScreenshotController screenshotController;
  imagescreen({
    this.Name,
    this.LastName,
    this.Email,
    this.phonenumber,
    this.Field,
    this.Fee,
    required this.screenshotController

});
  List<PopupMenuEntry<String>> getMenuItems() {
    return [
      PopupMenuItem<String>(
       value: "Edit",
          child:  Text("Edit")
      ),
      PopupMenuItem<String>(
        value: 'Save',
        child: Text("Save as pdf",)

      ),
      PopupMenuDivider(), // Separator
      PopupMenuItem<String>(
        value: 'Settings',
        child: Text('Settings'),
      ),
    ];
  }





  @override
  DateTime now = DateTime.now();

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey,

        title:  Center(child: Text("Fee challan",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50),)),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if(value=="Edit"){
                Navigator.pop(context);

              }
              else if(value=="Save"){

              }
              // Handle menu item selection here
              print('Selected: $value');
            },
            itemBuilder: (BuildContext context) {
              return getMenuItems();
            },
          ),
        ]

      ),


      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Center(
          child: Container(
            color: Colors.grey, 
            height: MediaQuery.of(context).size.height/1.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text("Reciept",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30),)),
                Text("Date:${now.month}/${now.day}/${now.year} " ,style: TextStyle(fontSize: 20),),
                Text("Name:${Name}${LastName}",style:TextStyle(fontSize: 20),),
                Text("Email:${Email}",style:TextStyle(fontSize: 20),),
                Text("phonenumber:${phonenumber}",style:TextStyle(fontSize: 20),),
                Text("Field:${Field}",style:TextStyle(fontSize: 20),),
                  Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [

                          Text("Subjects",style:TextStyle(fontSize: 20),),
                          Text("Credit/hr",style:TextStyle(fontSize: 20)),
                          Text("Fee",style:TextStyle(fontSize: 20))
                        ]
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 150,
                          ), // Empty cell content
                          Expanded(child: Text("")), // Empty cell with expanded space
                          Text(""), // Empty cell content
                        ],
                      ),
                      TableRow(

                        children: [
                          TableCell(
                            child:Text("")
                          ),

                          TableCell(
                              child:Text("")),
                          TableCell(
                              child:Text("Total:${Fee}",style: TextStyle(fontSize: 20),))
                          // Empty cell content
                        ],
                      ),


                    ],
                  ),
                Text("Please pay before the last due date otherwise you pay the Fine Extra  1000Rs ",style: TextStyle(color: Colors.red,fontSize: 15  ),),
                Center(child: Text("The Islamia University of Bhawalpur",style: TextStyle(color: Colors.black,fontSize: 25  ,fontStyle: FontStyle.italic  ),)),
                Text("Last Due Date:${6}/${5}/${now.year}",style: TextStyle(fontSize: 20),)








              ],
            ),

              ),
        ),
      )
    );

  }
}
