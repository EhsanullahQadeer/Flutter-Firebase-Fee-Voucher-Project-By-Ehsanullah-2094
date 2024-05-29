import 'package:feeproject/Screenshot.dart';
import 'package:feeproject/firebasecontroller.dart';
import 'package:feeproject/inputtextwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:screenshot/screenshot.dart';

class Studentscreen extends StatefulWidget {



  Studentscreen({super.key});

  @override
  State<Studentscreen> createState() => _StudentscreenState();
}

class _StudentscreenState extends State<Studentscreen> {
late ImageProvider captureimage;
  TextEditingController nametextEditingController=TextEditingController();
  TextEditingController lastnametextEditingController=TextEditingController();
  TextEditingController EmailtextEditingController=TextEditingController();
  TextEditingController phonenumbertextEditingController=TextEditingController();
  TextEditingController FieldtextEditingController=TextEditingController();
  TextEditingController FeetextEditingController=TextEditingController();
  ScreenshotController screenshotController=ScreenshotController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(child: Text("Student information",style: TextStyle(color: Colors.black,fontSize: 40,fontStyle:FontStyle.italic),)),


        ),
        body:
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 40,),
                  inputtext(labeltext: "Name", Controller: nametextEditingController),
                  SizedBox(height: 30,),
                  inputtext(labeltext: "Last Name", Controller: lastnametextEditingController),
                  SizedBox(height: 30,),
                  inputtext(labeltext: "Email", Controller: EmailtextEditingController),
                  SizedBox(height: 30,),
                  inputtext(labeltext: "phonenumber", Controller: phonenumbertextEditingController),
                  SizedBox(height: 30,),
                  inputtext(labeltext: "Field", Controller: FieldtextEditingController),
                  SizedBox(height: 30,),
                  inputtext(labeltext: "Fee", Controller: FeetextEditingController),
                  SizedBox(height: 40,),
                  InkWell(
                    onTap: (){

                      setState(() {
                        storeinformation().Store(
                            nametextEditingController.text,
                            lastnametextEditingController.text,
                            EmailtextEditingController.text,
                            phonenumbertextEditingController.text,
                            FieldtextEditingController.text,
                            FeetextEditingController.text
                        );
                          screenshotController.capture().then((image) {
                          });
                          Navigator.push(context, MaterialPageRoute(builder: (context) => imagescreen(
                            Name: nametextEditingController.text,
                            LastName: lastnametextEditingController.text,
                            Email: EmailtextEditingController.text,
                            phonenumber: phonenumbertextEditingController.text,
                            Field: FieldtextEditingController.text,
                            Fee: FeetextEditingController.text,
                            screenshotController: screenshotController,
                          ),));

                      });


                    },
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 300.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 90),
                          child: Text("Submitted",style: TextStyle(fontSize: 25),),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),


    );
  }
}
