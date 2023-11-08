part of '../utils/import/u_imports_app.dart';

class ControllerArticle {
  List<ModuleArticle> dataArticle = [
    ModuleArticle(
      title: DataAricle.title1,
      image: DataAricle.image1,
      date: DataAricle.date1,
      source: DataAricle.source1,
      link: DataAricle.link1,
    ),
    ModuleArticle(
      title: DataAricle.title2,
      image: DataAricle.image2,
      date: DataAricle.date2,
      source: DataAricle.source2,
      link: DataAricle.link2,
    ),
    ModuleArticle(
      title: DataAricle.title3,
      image: DataAricle.image3,
      date: DataAricle.date3,
      source: DataAricle.source3,
      link: DataAricle.link3,
    ),
    ModuleArticle(
      title: DataAricle.title4,
      image: DataAricle.image4,
      date: DataAricle.date4,
      source: DataAricle.source4,
      link: DataAricle.link4,
    ),
    ModuleArticle(
      title: DataAricle.title5,
      image: DataAricle.image5,
      date: DataAricle.date5,
      source: DataAricle.source5,
      link: DataAricle.link5,
    ),
    ModuleArticle(
      title: DataAricle.title6,
      image: DataAricle.image6,
      date: DataAricle.date6,
      source: DataAricle.source6,
      link: DataAricle.link6,
    ),
    ModuleArticle(
      title: DataAricle.title7,
      image: DataAricle.image7,
      date: DataAricle.date7,
      source: DataAricle.source7,
      link: DataAricle.link7,
    ),
  ];

  /// [getLength] return length number item in list
  int getLength() => dataArticle.length;

  /// [getArticle] return dataArticle by index
  ModuleArticle getArticle(int index) => dataArticle.elementAt(index);
}
