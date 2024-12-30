import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "email_hint": "Enter email",
          "password_hint": "Enter password",
          "internet_exception":
              "We're unable to show results.\nPlease check your data\nconnection.",
          "general_exception":
              "We're unable to process your request.\nPlease try again",
          "welcome_back": "Welcome back",
          "login": "Login"
        },
        "ur_PK": {
          "email_hint": "ای میل درج کریں۔",
        }
      };
}
