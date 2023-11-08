part of '../utils/import/u_imports_app.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WidgetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: UtilsColor.red,
      iconTheme: const IconThemeData(size: 35, color: Colors.white),
      title: Text(
        'BBC',
        style: GoogleFonts.blackOpsOne(fontSize: 35),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Badge(
            label: Text('10'),
            largeSize: 20,
            child: Icon(CupertinoIcons.bell_solid),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
