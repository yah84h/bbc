part of '../utils/import/u_imports_app.dart';

class ControllerVideo {
  List<ModuleVideo> dataVideo = [
    ModuleVideo(
        title: DataVideo.title1,
        image: DataVideo.image1,
        link: DataVideo.link1,
        source: DataVideo.source1,
        duration: DataVideo.duration1),
    ModuleVideo(
        title: DataVideo.title2,
        image: DataVideo.image2,
        link: DataVideo.link2,
        source: DataVideo.source2,
        duration: DataVideo.duration2),
    ModuleVideo(
        title: DataVideo.title3,
        image: DataVideo.image3,
        link: DataVideo.link3,
        source: DataVideo.source3,
        duration: DataVideo.duration3),
    ModuleVideo(
        title: DataVideo.title4,
        image: DataVideo.image4,
        link: DataVideo.link4,
        source: DataVideo.source4,
        duration: DataVideo.duration4),
    ModuleVideo(
        title: DataVideo.title5,
        image: DataVideo.image5,
        link: DataVideo.link5,
        source: DataVideo.source5,
        duration: DataVideo.duration5),
  ];

  /// [getLength] return length number item in list
  int getLength() => dataVideo.length;

  /// [getVideo] return data video by index
  ModuleVideo getVideo(int index) => dataVideo.elementAt(index);
}
