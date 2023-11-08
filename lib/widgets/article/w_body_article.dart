part of '../../utils/import/u_imports_app.dart';

class WidgetBodyArticle extends StatelessWidget {
  const WidgetBodyArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ControllerArticle().getLength(),
      itemBuilder: (context, index) {
        return WidgetCardArticle(data: ControllerArticle().getArticle(index));
      },
    );
  }
}
