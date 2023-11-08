part of '../../utils/import/u_imports_app.dart';

class ViewWebView extends StatefulWidget {
  const ViewWebView({super.key, required this.link});
  final String link;
  @override
  State<ViewWebView> createState() => _ViewWebViewState();
}

class _ViewWebViewState extends State<ViewWebView> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.link));
  }

  @override
  void dispose() {
    super.dispose();
    controller.clearCache();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppBar(),
      body: WebViewWidget(controller: controller),
    );
  }
}
