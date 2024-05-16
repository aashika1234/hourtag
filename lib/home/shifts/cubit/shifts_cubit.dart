import 'package:bloc/bloc.dart';

part 'shifts_state.dart';

class ShiftsCubit extends Cubit<ShiftsState> {
  ShiftsCubit() : super(ShiftsState.initial());
  void changeSelectedIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }
}
