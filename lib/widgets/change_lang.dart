import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/screens/HomeScreen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class changeLang extends StatefulWidget{
  @override
  _changeLangState createState() => _changeLangState();
}

class _changeLangState extends State<changeLang> {
 // void initState(){
 //   super.initState();
 //   getData();
 // }
  String _selectedLang = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         // DropdownButton(
         //   value: _selectedLang,
         //   onChanged: (value){
         //     setState(() {
         //       _selectedLang =value;
         //     });
         //     Get.updateLocale(Locale(_selectedLang));
         //   },
         //   items: [
         //   DropdownMenuItem(
         //       child: Text('العربية'),
         //       value: 'ar',
         //   ),
         //   DropdownMenuItem(
         //       child: Text('English'),
         //     value: 'en',
         //   )
         // ],
         // ),

            FlatButton(
              color: Colors.greenAccent,
              minWidth: 300,
              onPressed: (){
                setState(() {
               _selectedLang ='en';
                  });


              Get.updateLocale(Locale(_selectedLang));
              Get.off(MyBottomNavigationBar());
              },
              child: Text('English'),
            ),
            FlatButton(
              minWidth: 300,
              color: Colors.greenAccent,
              onPressed: (){
                setState(() {
                  _selectedLang ='ar';
                });
              Get.updateLocale(Locale(_selectedLang));
              Get.off(MyBottomNavigationBar());
              },
              child: Text('العربية'),
            ),
        ],),
      ),
    );
  }
  getData() async {
    SharedPreferences _pref =await SharedPreferences.getInstance();
   setState(() {
     _selectedLang=_pref.getString("selectedLang");
   });
  }

}