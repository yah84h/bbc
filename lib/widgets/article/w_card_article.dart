part of '../../utils/import/u_imports_app.dart';

class WidgetCardArticle extends StatelessWidget {
  const WidgetCardArticle({super.key, required this.data});
  final ModuleArticle data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: () {
          MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => ViewWebView(link: data.link));
          Navigator.push(context, route);
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                          Text(data.date),
                          Text(
                            data.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            data.source,
                            style: const TextTheme().titleLarge,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
