import 'dart:developer';
import 'package:car_verification_system/auth/controllers/auth/auth_cubit.dart';
import 'package:car_verification_system/auth/views/login/login_page_wrapper.dart';
import 'package:car_verification_system/home/views/home_page_wrapper.dart';
import 'package:car_verification_system/routing/route_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  // navigatorKey: navigatorKey,
  
  redirect: (context, state) {
    log(state.fullPath.toString());
    if( !context.read<AuthCubit>().isLoggedIn && state.fullPath != '/login' ){
      return '/login';
    } else if ( context.read<AuthCubit>().isLoggedIn && state.fullPath == '/login' ){
      return '/';
    } else {
      return state.fullPath;
    }
  },
  routes: [

    routeBuilder(
      path: '/',
      child: (context, state) => const HomePageWrapper(),
    ),

    routeBuilder(
      path: '/login',
      child: (context, state) => const LoginPageWrapper(),
    ),

  ],
  errorPageBuilder: (context, state) => MaterialPage(
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString())
      ),
    )
  ),
);