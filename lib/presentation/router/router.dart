import 'package:book_shop/application/shared/navigation/navigation_cubit.dart';
import 'package:book_shop/presentation/components/account/add_book_form.dart';
import 'package:book_shop/presentation/components/shared/splash.dart';
import 'package:book_shop/presentation/pages/account/account_screen.dart';
import 'package:book_shop/presentation/pages/account/edit_profile/edit_profile_screen.dart';
import 'package:book_shop/presentation/pages/cart/cart_screen.dart';
import 'package:book_shop/presentation/pages/dashboard_screen.dart';
import 'package:book_shop/presentation/pages/home/home_screen.dart';
import 'package:book_shop/presentation/pages/login/login.dart';
import 'package:book_shop/presentation/pages/order/order_screen.dart';
import 'package:book_shop/presentation/pages/register/sign_up.dart';
import 'package:book_shop/presentation/pages/wishlist/wishlist_screen.dart';
import 'package:book_shop/presentation/router/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// final AuthProvider authProvider = AuthProvider();
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: Routes.splash.toFullPath,
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  // refreshListenable: authProvider,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state, child) {
        String? title;
        if (state.matchedLocation == Routes.home.toPath) {
          title = Routes.home.toLabel;
        } else if (state.matchedLocation == Routes.account.toPath) {
          title = Routes.account.toLabel;
        } else if (state.matchedLocation == Routes.order.toPath) {
          title = Routes.order.toLabel;
        } else if (state.matchedLocation == Routes.wishlist.toPath) {
          title = Routes.wishlist.toLabel;
        } else {
          title = Routes.home.toLabel;
        }
        return DashboardScreen(
          title: title,
          child: child,
        );
      },
      routes: [
        GoRoute(
          name: Routes.home.toName,
          path: Routes.home.toPath,
          pageBuilder: (context, state) {
            context.read<NavigationCubit>().changeIndex(0);
            return const MaterialPage(
              child: HomeScreen(),
            );
          },
        ),
        GoRoute(
          name: Routes.wishlist.toName,
          path: Routes.wishlist.toPath,
          pageBuilder: (context, state) {
            context.read<NavigationCubit>().changeIndex(1);
            return const MaterialPage(
              child: WishlistScreen(),
            );
          },
        ),
        GoRoute(
          name: Routes.order.toName,
          path: Routes.order.toPath,
          pageBuilder: (context, state) {
            context.read<NavigationCubit>().changeIndex(2);
            return const MaterialPage(
              child: OrderScreen(),
            );
          },
        ),
        GoRoute(
          name: Routes.account.toName,
          path: Routes.account.toPath,
          pageBuilder: (context, state) {
            context.read<NavigationCubit>().changeIndex(3);
            return const MaterialPage(
              child: AccountScreen(),
            );
          },
          routes: [
            GoRoute(
              name: Routes.editProfile.toName,
              path: Routes.editProfile.toPath,
              pageBuilder: (context, state) => const MaterialPage(
                child: EditProfileScreen(),
              ),
            ),
            GoRoute(
              name: Routes.addBook.toName,
              path: Routes.addBook.toPath,
              pageBuilder: (context, state) => const MaterialPage(
                child: AddBookForm(),
              ),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
        name: Routes.cart.toName,
        path: Routes.cart.toPath,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: CartScreen(),
          );
        }),
    GoRoute(
      path: Routes.auth.toPath,
      pageBuilder: (context, state) {
        return const MaterialPage(
          child: Text('Auth'),
        );
      },
      routes: [
        GoRoute(
          name: Routes.login.toName,
          path: Routes.login.toPath,
          pageBuilder: (context, state) => const MaterialPage(
            child: LoginPage(),
          ),
        ),
        GoRoute(
          name: Routes.signup.toName,
          path: Routes.signup.toPath,
          pageBuilder: (context, state) => const MaterialPage(
            child: SignUpPage(),
          ),
        ),
      ],
      redirect: (context, state) {
        final bool loggedIn = FirebaseAuth.instance.currentUser != null;
        if (loggedIn) {
          return Routes.home.toFullPath;
        }
        return null;
      },
    ),
    GoRoute(
      name: Routes.splash.toName,
      path: Routes.splash.toPath,
      pageBuilder: (context, state) => const MaterialPage(
        child: Splash(),
      ),
      redirect: (context, state) {
        final bool loggedIn = FirebaseAuth.instance.currentUser != null;
        if (loggedIn) {
          return Routes.home.toFullPath;
        } else {
          return Routes.login.toFullPath;
        }
      },
    ),
  ],
  // redirect to the login page if the user is not logged in
  redirect: (BuildContext context, GoRouterState state) async {
    final bool loggedIn = FirebaseAuth.instance.currentUser != null;
    if (!loggedIn &&
        state.matchedLocation != Routes.login.toFullPath &&
        state.matchedLocation != Routes.signup.toFullPath) {
      return Routes.login.toFullPath;
    }
    // if (loggedIn &&
    //     (state.matchedLocation == Routes.login.toPath ||
    //         state.matchedLocation == Routes.signup.toPath)) {
    //   return '/test';
    // }

    // final bool loggedIn = authProvider.state.user != null;
    // final bool isLoading = authProvider.state.isLoading;
    // if (!loggedIn &&
    //     state.matchedLocation != Routes.login.toPath &&
    //     state.matchedLocation != Routes.signup.toPath) {
    //   return Routes.login.toPath;
    // }
    // if (loggedIn &&
    //     (state.matchedLocation == Routes.login.toPath ||
    //         state.matchedLocation == Routes.signup.toPath)) {
    //   return '/test';
    // }
    // if (isLoading &&
    //     state.matchedLocation != Routes.splash.toPath &&
    //     state.matchedLocation != Routes.login.toPath &&
    //     state.matchedLocation != Routes.signup.toPath) {
    //   return Routes.splash.toPath;
    // }
    // no need to redirect at all
    return null;
  },
);
