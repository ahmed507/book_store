import 'package:badges/badges.dart' as badges;
import 'package:book_shop/application/book/all_books/all_books_bloc.dart';
import 'package:book_shop/application/book/cart/cart_bloc.dart';
import 'package:book_shop/application/shared/navigation/navigation_cubit.dart';
import 'package:book_shop/application/shared/user/user_bloc.dart';
import 'package:book_shop/domain/core/failures.dart';
import 'package:book_shop/injection.dart';
import 'package:book_shop/presentation/components/shared/bottom_nav_widget.dart';
import 'package:book_shop/presentation/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatefulWidget {
  final String title;
  final Widget child;

  const DashboardScreen({Key? key, required this.child, required this.title})
      : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    getIt<AllBooksBloc>().add(const AllBooksEvent.getAllBooks());
    // getIt<AllBooksBloc>().add(const AllBooksEvent.getWishlistBooks());
    getIt<UserBloc>().add(const UserEvent.getCurrentUser());
    // Future.delayed(
    //   const Duration(seconds: 1),
    //   () {
    //     String? cartId = getIt<UserBloc>().state.user?.cartId;
    //     if (cartId == null) {
    //       getIt<CartBloc>().add(const CartEvent.createCart());
    //     } else {
    //       getIt<CartBloc>().add(CartEvent.getCart(cartId: cartId));
    //     }
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<NavigationCubit>(),
        ),
        BlocProvider.value(
          value: getIt<UserBloc>(),
        ),
        BlocProvider.value(
          value: getIt<AllBooksBloc>(),
        ),
        BlocProvider.value(
          value: getIt<CartBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<CartBloc, CartState>(
            listener: (context, state) {
              if (state.cart != null && getIt<UserBloc>().state.user != null) {
                if (getIt<UserBloc>().state.user!.cartId == null) {
                  getIt<UserBloc>().add(
                    UserEvent.updateCurrentUser(
                      getIt<UserBloc>().state.user!.copyWith(
                            cartId: state.cart!.id,
                          ),
                    ),
                  );
                }
              }
              state.failure.fold(
                () {},
                (failure) {
                  final message = fireStoreErrorHandling(failure);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
              );
            },
          ),
          BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              if (state.user != null && state.isLoading == false) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Welcome ${state.user!.name}'),
                    duration: const Duration(seconds: 2),
                  ),
                );
                String? cartId = state.user!.cartId;
                if (cartId == null) {
                  getIt<CartBloc>().add(const CartEvent.createCart());
                } else {
                  getIt<CartBloc>().add(CartEvent.getCart(cartId: cartId));
                }
              }
              state.failure.fold(
                () {},
                (failure) {
                  final message = fireStoreErrorHandling(failure);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
              );
            },
            listenWhen: (previous, current) =>
                previous.failure != current.failure ||
                previous.isLoading != current.isLoading,
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(widget.title),
            actions: [
              BlocBuilder<CartBloc, CartState>(
                buildWhen: (previous, current) =>
                    previous.totalItems != current.totalItems,
                builder: (context, state) {
                  if (state.totalItems == 0) {
                    return IconButton(
                      onPressed: () {
                        context.push(Routes.cart.toFullPath);
                      },
                      icon: const Icon(Icons.shopping_cart, size: 30),
                    );
                  }
                  return badges.Badge(
                    badgeContent: Text(
                      state.totalItems.toString(),
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    position: badges.BadgePosition.topEnd(end: 3, top: 0),
                    badgeStyle: badges.BadgeStyle(
                      badgeColor: Theme.of(context).primaryColor,
                    ),
                    child: IconButton(
                      onPressed: () {
                        context.push(Routes.cart.toFullPath);
                      },
                      icon: const Icon(Icons.shopping_cart, size: 30),
                    ),
                  );
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: widget.child,
          ),
          bottomNavigationBar: const BottomNavigationWidget(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          resizeToAvoidBottomInset: false,
        ),
      ),
    );
  }
}
