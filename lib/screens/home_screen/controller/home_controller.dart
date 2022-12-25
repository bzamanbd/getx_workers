import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt num = 0.obs;
  RxInt num2 = 0.obs;
  RxInt num3 = 0.obs;
  void increment() => num++;

  @override
  void onInit() {
    // ignore: avoid_print
    // ever(num, (_) => print("ever worker is working fine: $num"));
    everAll(
        // ignore: avoid_print
        [num, num2, num3], (_) => print("ever worker is working fine: $num"));
    // once(listener, callback)
    // debounce(listener, callback)
    // interval(listener, callback)
    super.onInit();
  }
}
