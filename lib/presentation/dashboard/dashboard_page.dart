import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../core/colors.dart';
import '../routes/router.gr.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => AppBar(
        title: const Text('Y App'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      routes: [
        HomeRouter(),
        OrderRouter(),
        DeliveryRouter(),
        RecommendationRouter(),
        AssistanceRouter()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          // type: BottomNavigationBarType.shifting,
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home_outlined),
              title: const Text('Accueil'),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.list_alt_outlined),
              title: const Text('Commandes'),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.delivery_dining_outlined),
              title: const Text('Livraison'),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.recommend_outlined),
              title: const Text('Recommander'),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.assistant_outlined),
              title: const Text('Assistance'),
            ),
          ],
          currentIndex: tabsRouter.activeIndex,
          selectedItemColor: colorPrimary,
          unselectedItemColor: colorSecondary,
          onTap: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}
