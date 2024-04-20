import 'package:book_shop/application/shared/navigation/navigation_cubit.dart';
import 'package:book_shop/presentation/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int currentTabIndex = 4;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'WISHLIST',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'ORDER',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'ACCOUNT',
            ),
          ],
          currentIndex: state.index,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            if (state.index != index) {
              context.read<NavigationCubit>().changeIndex(index);
              _goOtherTab(context, index);
            }
          },
        );
      },
    );
  }

  void _goOtherTab(BuildContext context, int index) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(Routes.home.toFullPath);
        break;
      case 1:
        GoRouter.of(context).go(Routes.wishlist.toFullPath);
        break;
      case 2:
        GoRouter.of(context).go(Routes.order.toFullPath);
        break;
      case 3:
        GoRouter.of(context).go(Routes.account.toFullPath);
        break;
    }
  }
}
