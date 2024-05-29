

import 'package:cloud_firestore/cloud_firestore.dart';
class storeinformation{


  Store(
  String? Name,
  String? LastName,
  String? Email,
  String? Field,

  String? phonenumber,
  String? fee
      ) async{
   return await FirebaseFirestore.instance.collection('students').add({
      'name': Name,
      'last_name': LastName,
      'email': Email,
      'phone_number': phonenumber.toString(),
      'field': Field,
      'fee': fee.toString(),
    });
  }
}