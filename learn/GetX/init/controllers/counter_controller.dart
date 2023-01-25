import 'package:get/get.dart';

class CounterController extends GetxController {
  // Reactive: akan selalu tanggap perubahan
  // var counter = 0.obs;
  var isDark = false.obs;

  void changeTheme() => isDark.value = !isDark.value;
  // void increment() => counter.value++;

  // Simple: tanggap ketika update dipanggil
  var counter = 0;
  // var isDark = false;

  // void changeTheme() {
  //   isDark = !isDark;
  //   update();
  // }

  void increment() {
    counter++;
    update(['id1', 'id2']);
  }
}
