enum Routes {
  auth,
  login,
  signup,
  splash,
  home,
  wishlist,
  order,
  account,
  addBook,
  cart,
  editProfile,
  editAddress,
  changePassword,
}

extension RoutesExt on Routes {
  String get toName {
    switch (this) {
      case Routes.auth:
        return 'auth';
      case Routes.login:
        return 'login';
      case Routes.signup:
        return 'signup';
      case Routes.splash:
        return 'splash';
      case Routes.home:
        return 'home';
      case Routes.wishlist:
        return 'wishlist';
      case Routes.order:
        return 'order';
      case Routes.account:
        return 'account';
      case Routes.addBook:
        return 'addBook';
      case Routes.cart:
        return 'cart';
      case Routes.editProfile:
        return 'editProfile';
      case Routes.editAddress:
        return 'editAddress';
      case Routes.changePassword:
        return 'changePassword';
    }
  }

  String get toPath {
    switch (this) {
      case Routes.auth:
        return '/auth';
      case Routes.login:
        return 'login';
      case Routes.signup:
        return 'signup';
      case Routes.splash:
        return '/splash';
      case Routes.home:
        return '/home';
      case Routes.wishlist:
        return '/wishlist';
      case Routes.order:
        return '/order';
      case Routes.account:
        return '/account';
      case Routes.addBook:
        return 'add-book';
      case Routes.cart:
        return '/cart';
      case Routes.editProfile:
        return 'edit-profile';
      case Routes.editAddress:
        return 'edit-changePassword';
      case Routes.changePassword:
        return 'change-password';
    }
  }

  String get toLabel {
    switch (this) {
      case Routes.auth:
        return 'Auth';
      case Routes.login:
        return 'Login';
      case Routes.signup:
        return 'Signup';
      case Routes.splash:
        return 'Splash';
      case Routes.home:
        return 'Home';
      case Routes.wishlist:
        return 'Wishlist';
      case Routes.order:
        return 'Order';
      case Routes.account:
        return 'Account';
      case Routes.addBook:
        return 'Add Book';
      case Routes.cart:
        return 'Cart';
      case Routes.editProfile:
        return 'Edit Profile';
      case Routes.editAddress:
        return 'Edit Address';
      case Routes.changePassword:
        return 'Change Password';
    }
  }

  // make full path for navigation
  String get toFullPath {
    switch (this) {
      case Routes.auth:
        return '/auth';
      case Routes.login:
        return '/auth/login';
      case Routes.signup:
        return '/auth/signup';
      case Routes.splash:
        return '/splash';
      case Routes.home:
        return '/home';
      case Routes.wishlist:
        return '/wishlist';
      case Routes.order:
        return '/order';
      case Routes.account:
        return '/account';
      case Routes.addBook:
        return '/account/add-book';
      case Routes.cart:
        return '/cart';
      case Routes.editProfile:
        return '/account/edit-profile';
      case Routes.editAddress:
        return '/account/edit-address';
      case Routes.changePassword:
        return '/account/change-password';
    }
  }
}
