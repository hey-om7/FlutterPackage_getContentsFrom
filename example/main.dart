import 'package:flutter/material.dart';
import 'package:get_file_contents_from/get_file_contents_from.dart';

void main() {
  runApp(MyApp());
}

var getAllPaths = FileManager();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: MyAppStful(),
        ),
      ),
    );
  }
}

class MyAppStful extends StatefulWidget {
  @override
  _MyAppStfulState createState() => _MyAppStfulState();
}

class _MyAppStfulState extends State<MyAppStful> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FutureBuilder(
              future: getAllPaths
                  .getContentsFilenamesFromPath(getAllPaths.pathDirectory),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: ListView(
                        children: [
                          ...List.generate(snapshot.data.length, (index) {
                            return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    getAllPaths.pathDirectory =
                                        getAllPaths.pathDirectory +
                                            snapshot.data[index] +
                                            '/';
                                  });
                                },
                                child: Text(snapshot.data[index]));
                          })
                        ],
                      ),
                    );
                  } else {
                    return Text('no data here');
                  }
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          ElevatedButton(
            onPressed: () async {
              getAllPaths.pathDirectory =
                  await getAllPaths.getPreviousDirectory();
              setState(() {
                getAllPaths.pathDirectory;
              });
            },
            child: Text('go back'),
          )
        ],
      ),
    );
  }
}
