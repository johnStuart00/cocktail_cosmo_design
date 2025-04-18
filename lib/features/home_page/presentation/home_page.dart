import 'package:cocktail_cosmo_design/core/assets_path/app_icons.dart';
import 'package:cocktail_cosmo_design/core/constants/app_color.dart';
import 'package:cocktail_cosmo_design/features/book_screen/presentation/book_screen.dart';
import 'package:cocktail_cosmo_design/features/cocktails_screen/presentation/cocktails_screen.dart';
import 'package:cocktail_cosmo_design/features/ingredients_screen/presentation/ingredients_screen.dart';
import 'package:cocktail_cosmo_design/features/main_screen/presentation/home_screen.dart';
import 'package:cocktail_cosmo_design/features/wishlist_screen/presentation/wishlist_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MainScreen(),
    CocktailsScreen(),
    IngredientsScreen(),
    BookScreen(),
    WishlistScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.backgroudColorApp,
        selectedItemColor: AppColor.mainBlue,
        unselectedItemColor: AppColor.black,
        type: BottomNavigationBarType.fixed,

        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcons.mainIcon,
              color: _selectedIndex == 0 ? AppColor.mainBlue : AppColor.black,
            ),
            label: 'Main',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcons.cocktailIcon,
              color: _selectedIndex == 1 ? AppColor.mainBlue : AppColor.black,
            ),
            label: 'Cocktails',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcons.ingredietIcon,
              color: _selectedIndex == 2 ? AppColor.mainBlue : AppColor.black,
            ),
            label: 'Ingredients',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcons.bookIcon,
              color: _selectedIndex == 3 ? AppColor.mainBlue : AppColor.black,
            ),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppIcons.wishIcon,
              color: _selectedIndex == 4 ? AppColor.mainBlue : AppColor.black,
            ),
            label: 'Wish-list',
          ),
        ],
      ),
    );
  }
}
