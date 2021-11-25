// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../../domain/auth/value_objects.dart' as _i15;
import '../assistance/assistance_page.dart' as _i11;
import '../dashboard/dashboard_page.dart' as _i6;
import '../delivery/delivery_page.dart' as _i9;
import '../home/home_page.dart' as _i7;
import '../order_summary/order_summary_page.dart' as _i12;
import '../orders/order_page.dart' as _i8;
import '../recommendation/recommendation_page.dart' as _i10;
import '../register/register_page.dart' as _i5;
import '../register/verify_phone_number/phone_number_verification.dart' as _i3;
import '../register/verify_phone_number/verify_phone_number.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    PhoneNumberVerificationRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.PhoneNumberVerificationPage());
    },
    VerifyPhoneNumberRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyPhoneNumberRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.VerifyPhoneNumberPage(
              key: args.key,
              countryCode: args.countryCode,
              phoneNumber: args.phoneNumber));
    },
    RegisterRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegisterPage());
    },
    DashboardRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.DashboardPage());
    },
    HomeRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.HomePage());
    },
    OrderRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.OrderPage());
    },
    DeliveryRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.DeliveryPage());
    },
    RecommendationRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.RecommendationPage());
    },
    AssistanceRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.AssistancePage());
    },
    OrderSummaryRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.OrderSummaryPage());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(SplashRoute.name, path: '/'),
        _i13.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i13.RouteConfig(PhoneNumberVerificationRoute.name,
            path: '/phone-number-verification-page'),
        _i13.RouteConfig(VerifyPhoneNumberRoute.name,
            path: '/verify-phone-number-page'),
        _i13.RouteConfig(RegisterRoute.name, path: '/register-page'),
        _i13.RouteConfig(DashboardRoute.name, path: '/dashboard', children: [
          _i13.RouteConfig(HomeRouter.name,
              path: 'home', parent: DashboardRoute.name),
          _i13.RouteConfig(OrderRouter.name,
              path: 'order',
              parent: DashboardRoute.name,
              children: [
                _i13.RouteConfig(OrderSummaryRoute.name,
                    path: 'order_summary', parent: OrderRouter.name)
              ]),
          _i13.RouteConfig(DeliveryRouter.name,
              path: 'delivery', parent: DashboardRoute.name),
          _i13.RouteConfig(RecommendationRouter.name,
              path: 'recommendation', parent: DashboardRoute.name),
          _i13.RouteConfig(AssistanceRouter.name,
              path: 'assistance', parent: DashboardRoute.name)
        ])
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i13.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.PhoneNumberVerificationPage]
class PhoneNumberVerificationRoute extends _i13.PageRouteInfo<void> {
  const PhoneNumberVerificationRoute()
      : super(name, path: '/phone-number-verification-page');

  static const String name = 'PhoneNumberVerificationRoute';
}

/// generated route for [_i4.VerifyPhoneNumberPage]
class VerifyPhoneNumberRoute
    extends _i13.PageRouteInfo<VerifyPhoneNumberRouteArgs> {
  VerifyPhoneNumberRoute(
      {_i14.Key? key,
      required _i15.CountryCode countryCode,
      required _i15.PhoneNumber phoneNumber})
      : super(name,
            path: '/verify-phone-number-page',
            args: VerifyPhoneNumberRouteArgs(
                key: key, countryCode: countryCode, phoneNumber: phoneNumber));

  static const String name = 'VerifyPhoneNumberRoute';
}

class VerifyPhoneNumberRouteArgs {
  const VerifyPhoneNumberRouteArgs(
      {this.key, required this.countryCode, required this.phoneNumber});

  final _i14.Key? key;

  final _i15.CountryCode countryCode;

  final _i15.PhoneNumber phoneNumber;
}

/// generated route for [_i5.RegisterPage]
class RegisterRoute extends _i13.PageRouteInfo<void> {
  const RegisterRoute() : super(name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

/// generated route for [_i6.DashboardPage]
class DashboardRoute extends _i13.PageRouteInfo<void> {
  const DashboardRoute({List<_i13.PageRouteInfo>? children})
      : super(name, path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for [_i7.HomePage]
class HomeRouter extends _i13.PageRouteInfo<void> {
  const HomeRouter() : super(name, path: 'home');

  static const String name = 'HomeRouter';
}

/// generated route for [_i8.OrderPage]
class OrderRouter extends _i13.PageRouteInfo<void> {
  const OrderRouter({List<_i13.PageRouteInfo>? children})
      : super(name, path: 'order', initialChildren: children);

  static const String name = 'OrderRouter';
}

/// generated route for [_i9.DeliveryPage]
class DeliveryRouter extends _i13.PageRouteInfo<void> {
  const DeliveryRouter() : super(name, path: 'delivery');

  static const String name = 'DeliveryRouter';
}

/// generated route for [_i10.RecommendationPage]
class RecommendationRouter extends _i13.PageRouteInfo<void> {
  const RecommendationRouter() : super(name, path: 'recommendation');

  static const String name = 'RecommendationRouter';
}

/// generated route for [_i11.AssistancePage]
class AssistanceRouter extends _i13.PageRouteInfo<void> {
  const AssistanceRouter() : super(name, path: 'assistance');

  static const String name = 'AssistanceRouter';
}

/// generated route for [_i12.OrderSummaryPage]
class OrderSummaryRoute extends _i13.PageRouteInfo<void> {
  const OrderSummaryRoute() : super(name, path: 'order_summary');

  static const String name = 'OrderSummaryRoute';
}
