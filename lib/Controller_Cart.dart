import 'package:get/get.dart';

class Controller extends GetxController {
  var Watch = 0.obs;
  var Watch1 = 0.obs;
  var Watch2 = 0.obs;
  var Watch3 = 0.obs;
  var Watch4 = 0.obs;

  addWatch() {
    return Watch.value++;
  }

  removeWatch() {
    if (Watch.value > 0) {
      return Watch.value--;
    }
  }

  addWatch1() {
    return Watch1.value++;
  }

  removeWatch1() {
    if (Watch1.value > 0) {
      return Watch1.value--;
    }
  }

  addWatch2() {
    return Watch2.value++;
  }

  removeWatch2() {
    if (Watch2.value > 0) {
      return Watch2.value--;
    }
  }

  addWatch3() {
    return Watch3.value++;
  }

  removeWatch3() {
    if (Watch3.value > 0) {
      return Watch3.value--;
    }
  }

  addWatch4() {
    return Watch4.value++;
  }

  removeWatch4() {
    if (Watch4.value > 0) {
      return Watch4.value--;
    }
  }

  sumTotal() {
    return Watch.value + Watch1.value + Watch2.value;
  }
}