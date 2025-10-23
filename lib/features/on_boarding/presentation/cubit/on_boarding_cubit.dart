import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'on_boarding_intent.dart';
import 'on_boarding_state.dart';
class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  final PageController _pageController = PageController();
  int _currentPage = 0;

  PageController get pageController => _pageController;
  void intent(OnBoardingIntent intent) {
    if (intent is NextPageIntent) {
      _nextPage();
    } else if (intent is PreviousPageIntent) {
      _previousPage();
    } else if (intent is PageChangedIntent) {
      _onPageChanged(intent.pageIndex);
    }
  }
  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _previousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _onPageChanged(int index) {
    _currentPage = index;
    emit(PageChangedState(_currentPage));
  }

  @override
  Future<void> close() {
    _pageController.dispose();
    return super.close();
  }
}
