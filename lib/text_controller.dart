// text_controller.dart
import 'package:get/get.dart';

class TextController extends GetxController {
  var text = "Hello".obs;

  void toggleCase() {
    if (text.value == text.value.toUpperCase()) {
      text.value = text.value.toLowerCase();
    } else {
      text.value = text.value.toUpperCase();
    }
  }
}
