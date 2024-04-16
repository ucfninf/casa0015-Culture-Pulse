// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:culture_pulse_app/cache.dart';
import 'package:culture_pulse_app/app_page/map_page.dart';
import 'package:culture_pulse_app/app_page/my_page.dart';
import 'package:sp_util/sp_util.dart';

class Taber extends StatefulWidget {
  const Taber({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Taber> {
  static const double _imageSize = 25.0;

  late List<Widget> _pageList;
  final List<String> _appBarTitles = ['Home', 'Me'];
  final PageController _pageController = PageController();

  late List<BottomNavigationBarItem>? _list;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    initData();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void refreshData() {
    setState(() {});
  }

  List<BottomNavigationBarItem> _buildBottomNavigationBarItem(
      Color selectedColor) {
    List<List<Widget>> tabImages = [
      [
        Image.asset('assets/home/icon_home_unselect.png', width: _imageSize),
        Image.asset(
          'assets/home/icon_home_select.png',
          width: _imageSize,
          color: selectedColor,
        ),
      ],
      [
        Image.asset('assets/home/icon_me_unselect.png', width: _imageSize),
        Image.asset(
          'assets/home/icon_me_select.png',
          width: _imageSize,
          color: selectedColor,
        ),
      ]
    ];
    _list = List.generate(tabImages.length, (i) {
      return BottomNavigationBarItem(
        icon: tabImages[i][0],
        activeIcon: tabImages[i][1],
        label: _appBarTitles[i],
      );
    });
    return _list!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: _buildBottomNavigationBarItem(Color(
              SpUtil.getInt(Cache.mainColorCache) ?? Cache.mainColor.value)),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          elevation: 5.0,
          iconSize: 21.0,
          selectedFontSize: 12,
          unselectedFontSize: 10,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              if (index != currentIndex) {
                currentIndex = index;
                _pageController.jumpToPage(index);
              }
            });
          },
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (int index) {
            currentIndex = index;
          },
          children: _pageList,
        ));
  }
}
