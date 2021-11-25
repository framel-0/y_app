import 'package:auto_route/auto_route.dart';

import '../assistance/assistance_page.dart';
import '../dashboard/dashboard_page.dart';
import '../delivery/delivery_page.dart';
import '../home/home_page.dart';
import '../order_summary/order_summary_page.dart';
import '../orders/order_page.dart';
import '../recommendation/recommendation_page.dart';
import '../register/register_page.dart';
import '../register/verify_phone_number/phone_number_verification.dart';
import '../register/verify_phone_number/verify_phone_number.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // initial route is named "/"
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: PhoneNumberVerificationPage),
    AutoRoute(page: VerifyPhoneNumberPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(
      path: '/dashboard',
      page: DashboardPage,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: HomePage,
        ),
        AutoRoute(
            path: 'order',
            name: 'OrderRouter',
            page: OrderPage,
            children: [
              AutoRoute(
                path: 'order_summary',
                page: OrderSummaryPage,
              ),
            ]),
        AutoRoute(
          path: 'delivery',
          name: 'DeliveryRouter',
          page: DeliveryPage,
        ),
        AutoRoute(
          path: 'recommendation',
          name: 'RecommendationRouter',
          page: RecommendationPage,
        ),
        AutoRoute(
          path: 'assistance',
          name: 'AssistanceRouter',
          page: AssistancePage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
