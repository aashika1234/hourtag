import 'package:bloc/bloc.dart';
import 'package:hourtag/home/shifts/model/past_shifts/past_shift_model.dart';
import 'package:hourtag/home/shifts/repo/shift_repo.dart';

import '../model/shift_activity/shift_activity_model.dart';

part 'shifts_state.dart';

class ShiftsCubit extends Cubit<ShiftsState> {
  ShiftRepo shiftRepo = ShiftRepo();
  final String authToken;
  ShiftsCubit({required this.authToken})
      : super(ShiftsState.initial(authToken: authToken));
  void changeSelectedIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  Future<void> getShiftActivityData(int companyId) async {
    try {
      final shiftActivityModel =
          await shiftRepo.getActivityData(authToken, companyId);

      emit(state.copyWith(shiftActivityModel: shiftActivityModel));
      print('${state.shiftActivityModel}');
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }
}
