part of '../../utils/import/u_imports_app.dart';

class WidgetCardVideo extends StatelessWidget {
  const WidgetCardVideo({super.key, required this.data});
  final ModuleVideo data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          height: 130,
          //color: Colors.amber,
          child: Row(
            children: [
              Expanded(
                  child: SizedBox(
                height: double.infinity,
                child: Image.network(
                  data.image,
                  fit: BoxFit.cover,
                ),
              )),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(CupertinoIcons.video_camera),
                            const SizedBox(width: 4),
                            Text(data.duration),
                          ],
                        ),
                        Text(
                          data.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(data.source),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
