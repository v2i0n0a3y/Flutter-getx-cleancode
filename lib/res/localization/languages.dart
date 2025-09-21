import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter Email',
          'internet_exception':
              'We are unable to show result\nPlease check your internet connection ',
          'general_exception': 'We are unable to Procced',
          'welcome':'...WELCOME TO MUMBAI...',
          'login':'Login',
          'password_hint':'Enter Password'
        },
        'mr_IN': {
          'email_hint': 'ई-मेल टाका',
          'internet_exception':
              'आम्ही उत्तर देण्यासाठी असमर्थ आहोत./n कृपया आपले इंटरनेट कनेक्शन तपासा.',
          'general_exception': 'आम्ही पुढे जाण्यासाठी असमर्थ आहोत.',
          'welcome':'...मुंबईत आपले स्वागत आहे...'

        }
      };
}
