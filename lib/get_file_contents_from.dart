library get_file_contents_from;

import 'dart:io';
import 'dart:io' as io;

class FileManager {
  String pathDirectory = '/storage/emulated/0/';
  Future<List> getContentsFromPath(String path) async {
    List file = [];

    var _fullPaths = [];
    pathDirectory = path;
    file = io.Directory(path).listSync();

    for (int i = 0; i < file.length; i++) {
      _fullPaths.add(file[i].path.toString());
    }
    return _fullPaths;
  }

  Future<List> getContentsFilenamesFromPath(String path) async {
    List file = [];
    var _fileNames = [];
    pathDirectory = path;
    file = io.Directory(path).listSync();

    for (int i = 0; i < file.length; i++) {
      _fileNames.add((file[i].path.toString().split('/').last));
    }
    return _fileNames;
  }

  Future<String> getPreviousDirectory() async {
    String _tempDirectory = pathDirectory;
    if (_tempDirectory != "/storage/emulated/0/") {
      int _length = _tempDirectory
          .split("/")[_tempDirectory.split("/").length - 2]
          .length;
      String _finalPath =
          _tempDirectory.substring(0, _tempDirectory.length - _length - 1);
      print(_finalPath);
      return _finalPath;
    } else {
      String _finalPath = "/storage/emulated/0/";
      return _finalPath;
    }
  }

  Future<String> getCurrentDirectory() async {
    return Directory.current.path;
  }
}
