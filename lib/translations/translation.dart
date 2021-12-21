import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': {'title': 'Home Page', 'body': 'This is Home Page'},
        'id': {'title': 'Halaman Utama', 'body': 'Ini Adalah Halaman Utama'}
      };
}
