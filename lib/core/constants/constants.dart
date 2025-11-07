abstract class Constants {
  static const String enLocal = "en";
  static const String arLocal = "ar";
  static const String contentType = "content-Type";
  static const String appJson = "application/json";
  static const String next = "Next";
  static const String skip = "Skip";
  static const String doIt = "Do IT";
  static const String noResponseReceivedMessage = "noResponseReceivedMessage";
  static const String anUnknownErrorOccurred = "anUnknownErrorOccurred";
  static const String email = "email";
  static const String password = "password";
  static const String error = "error";
  static const String message = "message";
  static const String workouts = "Workouts";
  static const String titleOnBoarding = "the price of excellent \n is discipline";
  static const String titleTwoBoarding = "Fitness has never been so \n much fun";
  static const String titleThreeBoarding = "NO MORE EXCUSES \n Do It Now";
  static const String descriptionOnBoarding = "Lorem ipsum dolor sit amet consectetur. Eu urna ut gravida quis id pretium purus. Mauris massa";
 static const String getMealsDetailsQuery = "i";
 static const String invalidUrl = "Invalid YouTube URL";


   // 🔸 Validation patterns
  static const String emailPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
// لازم يحتوي على حرف كبير واحد على الأقل
  static const String uppercasePattern = r'(?=.*[A-Z])';

  // لازم يحتوي على حرف صغير واحد على الأقل
  static const String lowercasePattern = r'(?=.*[a-z])';

  // لازم يحتوي على رقم واحد على الأقل
  static const String numberPattern = r'(?=.*[0-9])';

  // لازم يحتوي على رمز خاص واحد على الأقل
  static const String specialCharPattern = r'(?=.*[#?!@$%^&*-])';

  // الطول الأدنى 8 حروف
  static const String lengthPattern = r'.{8,}';

  // النمط الكامل (مركّب)
  static const String passwordPattern =
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[#?!@$%^&*-]).{8,}$';

  static const String invalidResponse =
      "Invalid response: missing token or user";

        static const String usernamePattern = r'^[a-zA-Z0-9,.-]+$';



}