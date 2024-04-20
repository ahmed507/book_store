import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'navigation_state.dart';

@lazySingleton
class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(index: 0));

  void changeIndex(int index) {
    emit(NavigationState(index: index));
  }
}
