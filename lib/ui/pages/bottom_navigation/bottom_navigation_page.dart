import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vizier/ui/pages/bottom_navigation/bottom_navigation_item.dart';
import 'package:vizier/ui/widgets/ripple_remover.dart';

class BottomNavigationPage extends StatefulWidget {
  static const String route = 'bottom_navigation';

  const BottomNavigationPage({super.key});

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: BottomNavigationItem.values
          .map(
            (e) => e.route,
          )
          .toList(),
      bottomNavigationBuilder: (_, tabsRouter) => RippleRemover(
        child: _buildBottomNavigationBar(
          tabsRouter: tabsRouter,
        ),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar({
    required TabsRouter tabsRouter,
  }) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      items: BottomNavigationItem.values
          .map(
            (e) => BottomNavigationBarItem(
              icon: Icon(e.icon),
              label: e.title(context),
            ),
          )
          .toList(),
    );
  }
}
