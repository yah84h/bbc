part of '../../utils/import/u_imports_app.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  int currentSelected = 0;
  PageController? controller;
  List<Widget> bodyPageView = const [
    WidgetBodyArticle(),
    WidgetBodyVideo(),
    WidgetBodyFavorite(),
    WidgetBodyUploadArticle(),
  ];
  @override
  void initState() {
    controller = PageController(initialPage: currentSelected);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppBar(),
      drawer: const Drawer(),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: bodyPageView,
      ),
      bottomNavigationBar: WidgetBottomNav(
        controller: controller,
        currentSelected: currentSelected,
      ),
    );
  }
}
