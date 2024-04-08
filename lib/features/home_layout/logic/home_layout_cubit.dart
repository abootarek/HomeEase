import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/features/home/ui/home_screen.dart';
import 'package:meta/meta.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());

  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    // abod(),
    // soha(),
  ];
  void changeBottomNav(int index) {
    currentIndex = index;
    emit(BottomNavigationBarChange());
  }
}
