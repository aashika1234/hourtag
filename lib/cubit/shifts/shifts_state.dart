// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'shifts_cubit.dart';

class ShiftsState {
  final int selectedIndex;
  ShiftsState({
    required this.selectedIndex,
  });
  List<Object?> get props => [selectedIndex];
  factory ShiftsState.initial() {
    return ShiftsState(
      selectedIndex: 0,
    );
  }
  ShiftsState copyWith({
    int? selectedIndex,
  }) {
    return ShiftsState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
