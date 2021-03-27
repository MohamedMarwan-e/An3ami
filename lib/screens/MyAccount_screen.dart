import 'package:flutter/material.dart';
import 'package:flutter_app_an3ami/widgets/appBar.dart';

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
            title: Text(
              'بيانات حسابي',
            ),
            subtitle: Text('معلومات شخصية'),
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
            title: Text('نقاطي'),
            subtitle: Text('اسثمر نقاطك واحصل علي كوبون خصم'),
            trailing: Icon(Icons.keyboard_arrow_left),
            onTap: () {
            },
            onLongPress: () {
              Text('Data');
            },
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
            title: Text('اللغة'),
            subtitle: Text('التحكم في اللغه'),
            trailing: Icon(Icons.keyboard_arrow_left),
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
            title: Text('اتصل بنا',),
            subtitle: Text('للتواصل معنا '),
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
            title: Text('الشروط والأحكام'),
            subtitle: Text('قم بمراجعة الشروط والأحكام'),
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
            title: Text('حول التطبيق'),
            subtitle: Text('تعرف علينا اكثر'),
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
            title: Text('تسجيل الخروج'),
            subtitle: Text('يمكنك تسجيل الخروج من حسابك من هنا'),
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
