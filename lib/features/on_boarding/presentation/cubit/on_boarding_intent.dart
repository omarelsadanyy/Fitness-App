import 'package:flutter/cupertino.dart';
@immutable
abstract class OnBoardingIntent {}

class NextPageIntent extends OnBoardingIntent {}

class PreviousPageIntent extends OnBoardingIntent {}

class PageChangedIntent extends OnBoardingIntent {
  final int pageIndex;
  PageChangedIntent(this.pageIndex);
}
