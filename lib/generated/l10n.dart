// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome Back`
  String get login_title {
    return Intl.message(
      'Welcome Back',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `sign in to access your account`
  String get login_subtitle {
    return Intl.message(
      'sign in to access your account',
      name: 'login_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Password does not match`
  String get password_does_not_match {
    return Intl.message(
      'Password does not match',
      name: 'password_does_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get login {
    return Intl.message(
      'Log In',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get login_or {
    return Intl.message(
      'or',
      name: 'login_or',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get login_facebook {
    return Intl.message(
      'Sign in with Facebook',
      name: 'login_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get login_google {
    return Intl.message(
      'Sign in with Google',
      name: 'login_google',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get invalid_email {
    return Intl.message(
      'Invalid email',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get required_email {
    return Intl.message(
      'Email is required',
      name: 'required_email',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get required_password {
    return Intl.message(
      'Password is required',
      name: 'required_password',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password`
  String get invalid_password {
    return Intl.message(
      'Invalid password',
      name: 'invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get password_length {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'password_length',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter`
  String get password_uppercase {
    return Intl.message(
      'Password must contain at least one uppercase letter',
      name: 'password_uppercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one lowercase letter`
  String get password_lowercase {
    return Intl.message(
      'Password must contain at least one lowercase letter',
      name: 'password_lowercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one digit`
  String get password_digit {
    return Intl.message(
      'Password must contain at least one digit',
      name: 'password_digit',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one special character`
  String get password_special {
    return Intl.message(
      'Password must contain at least one special character',
      name: 'password_special',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account ?`
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t have an account ?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message(
      'Full Name',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `Name is required`
  String get name_required {
    return Intl.message(
      'Name is required',
      name: 'name_required',
      desc: '',
      args: [],
    );
  }

  /// `Name must be at least 3 characters`
  String get name_length {
    return Intl.message(
      'Name must be at least 3 characters',
      name: 'name_length',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account ?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account ?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `By checking this box, you agree to our`
  String get by_checking_this_box {
    return Intl.message(
      'By checking this box, you agree to our',
      name: 'by_checking_this_box',
      desc: '',
      args: [],
    );
  }

  /// `Terms`
  String get terms {
    return Intl.message(
      'Terms',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Weak password`
  String get weak_password {
    return Intl.message(
      'Weak password',
      name: 'weak_password',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
