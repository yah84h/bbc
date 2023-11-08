part of '../../utils/import/u_imports_app.dart';

class WidgetBodyVideo extends StatelessWidget {
  const WidgetBodyVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ControllerVideo().getLength(),
      itemBuilder: (context, index) {
        return WidgetCardVideo(data: ControllerVideo().getVideo(index));
      },
    );
  }
}
