import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fluttertube/api.dart';
import 'package:fluttertube/model/video.dart';

class VideoBlocs implements BlocBase{
  Api api = Api();

  List<Video> videos;

  final _videoController = StreamController();
  Stream get outVideos => _videoController.stream;

  final _searchController = StreamController();
  Sink get inSearch => _searchController.sink;
  @override
  void addListener(listener) {
  }

  VideoBlocs(){
    api = Api();
    _searchController.stream.listen(_search);
  };

  Future<void> _search(String search) async {
    videos = await api.search(search);
  }

  @override
  void dispose() {
    _videoController.close();
  }

  @override
  bool get hasListeners => null;

  @override
  void notifyListeners() {
  }

  @override
  void removeListener(listener) {
  }
}