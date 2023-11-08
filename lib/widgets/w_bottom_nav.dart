part of '../utils/import/u_imports_app.dart';

class WidgetBottomNav extends StatelessWidget {
  const WidgetBottomNav({
    super.key,
    required this.controller,
    required this.currentSelected,
  });

  final PageController? controller;
  final int currentSelected;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      initialActiveIndex: currentSelected,
      style: TabStyle.flip,
      items: const [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.map, title: 'Discovery'),
        TabItem(icon: Icons.add, title: 'Add'),
        TabItem(icon: Icons.message, title: 'Message'),
      ],
      onTap: (int index) {
        controller?.animateToPage(
          index,
          duration: const Duration(milliseconds: 400),
          curve: Curves.linear,
        );
      },
    );
  }
}
