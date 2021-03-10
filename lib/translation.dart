import 'package:flutter_app_an3ami/utils/lang/ar.dart';
import 'package:flutter_app_an3ami/utils/lang/en.dart';
import 'package:get/get.dart';

class Translation extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en':en,
    'ar':ar,

  };


}