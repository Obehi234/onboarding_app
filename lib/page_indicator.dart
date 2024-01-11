import 'package:flutter/material.dart';

class PageIndicatorDemo extends StatefulWidget {
  const PageIndicatorDemo({Key? key}) : super(key: key);

  @override
  State<PageIndicatorDemo> createState() => _PageIndicatorDemoState();
}

class _PageIndicatorDemoState extends State<PageIndicatorDemo> {
  final PageController _pageController = PageController();
  final int _numPages = 2;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _numPages,
          (index) => buildIndicator(index),
        ));
  }

  Widget buildIndicator(int index) {
    bool isCurrentPage = index == _currentPage;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: isCurrentPage ? 16.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration( color: isCurrentPage ? Colors.blue : Colors.grey,
      borderRadius: BorderRadius.circular(4.0))
      );
  }
}
