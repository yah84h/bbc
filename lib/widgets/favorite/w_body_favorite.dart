part of '../../utils/import/u_imports_app.dart';

class WidgetBodyFavorite extends StatelessWidget {
  const WidgetBodyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Favorite'),
          ElevatedButton(onPressed: () {}, child: const Text('data'))
        ],
      ),
    );
  }
}
