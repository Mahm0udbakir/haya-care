import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<int> {
  // هنا بنبدأ الـ Cubit بالقيمة المبدئية 0
  BottomNavCubit() : super(0);

  // دالة لتغيير الـ Index
  void changeTab(int index) {
    emit(index);
  }
}
