// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/register_form/register_form_bloc.dart' as _i12;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'application/book/all_books/all_books_bloc.dart' as _i15;
import 'application/book/cart/cart_bloc.dart' as _i11;
import 'application/shared/navigation/navigation_cubit.dart' as _i3;
import 'application/shared/user/user_bloc.dart' as _i14;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/core/i_fire_store_service.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/core/fire_store_service.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart' as _i16;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.NavigationCubit>(() => _i3.NavigationCubit());
    gh.lazySingleton<_i4.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => firebaseInjectableModule.fireStore);
    gh.lazySingleton<_i7.IFireStoreService>(
        () => _i8.FireStoreService(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
          gh<_i5.FirebaseAuth>(),
          gh<_i4.GoogleSignIn>(),
          gh<_i7.IFireStoreService>(),
        ));
    gh.lazySingleton<_i11.CartBloc>(
        () => _i11.CartBloc(gh<_i7.IFireStoreService>()));
    gh.factory<_i12.RegisterFormBloc>(
        () => _i12.RegisterFormBloc(authFacade: gh<_i9.IAuthFacade>()));
    gh.factory<_i13.SignInFormBloc>(
        () => _i13.SignInFormBloc(authFacade: gh<_i9.IAuthFacade>()));
    gh.lazySingleton<_i14.UserBloc>(() => _i14.UserBloc(
          gh<_i9.IAuthFacade>(),
          gh<_i7.IFireStoreService>(),
        ));
    gh.lazySingleton<_i15.AllBooksBloc>(() => _i15.AllBooksBloc(
          gh<_i7.IFireStoreService>(),
          gh<_i9.IAuthFacade>(),
        ));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}
