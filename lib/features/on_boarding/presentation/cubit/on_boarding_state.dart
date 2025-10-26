import 'package:flutter/material.dart';

@immutable
abstract class OnBoardingState {}

class OnBoardingInitial extends OnBoardingState {}

class PageChangedState extends OnBoardingState {
  final int pageIndex;

  PageChangedState(this.pageIndex);
}
