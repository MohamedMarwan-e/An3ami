import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/appBar.dart';
import 'package:flutter_app_an3ami/widgets/change_lang.dart';
import 'package:get/get.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black54,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            title: Text('بيانات حسابي'.tr,),
            subtitle: Text('معلومات شخصية'.tr),
            trailing: Icon(Icons.keyboard_arrow_left),
            onTap: () {},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red[400],
              child: Icon(
                Icons.animation,
                color: Colors.white,
              ),
            ),
            title: Text('نقاطي'.tr),
            subtitle: Text('اسثمر نقاطك واحصل علي كوبون خصم'.tr),
            trailing: Icon(Icons.keyboard_arrow_left),

          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent[200],
              child: Icon(
                Icons.language_outlined,
                color: Colors.white,
              ),
            ),
            title: Text('اللغة'.tr),
            subtitle: Text('التحكم في اللغه'.tr),
            trailing: Icon(Icons.keyboard_arrow_left),
            onTap: () {
            Get.to(changeLang());
              },
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.lightGreenAccent,
              child: Icon(
                Icons.phone,
                color: Colors.white,
              ),
            ),
            title: Text('اتصل بنا'.tr),
            subtitle: Text('للتواصل معنا '.tr),
            trailing: Icon(Icons.keyboard_arrow_left),
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(
                Icons.assignment,
                color: Colors.white,
              ),
            ),
            title: Text('الشروط والأحكام'.tr),
            subtitle: Text('قم بمراجعة الشروط والأحكام'.tr),
            trailing: Icon(Icons.keyboard_arrow_left),
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.info,
                color: Colors.white,
              ),
            ),
            title: Text('حول التطبيق'.tr),
            subtitle: Text('تعرف علينا اكثر'.tr),
            trailing: Icon(Icons.keyboard_arrow_left),
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.cyanAccent,
              child: Image.asset("assets/images/signout.png",fit: BoxFit.cover,width: 25,height: 30,),
            ),
            title: Text('تسجيل الخروج'.tr),
            subtitle: Text('يمكنك تسجيل الخروج من حسابك من هنا'.tr),
            trailing: Icon(Icons.keyboard_arrow_left),
          ),
          new Divider(
            height: 1.0,
            indent: 10.0,
          ),

        ],
      ),
    );
  }
}
