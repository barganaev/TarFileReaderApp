import 'package:flutter/material.dart';
import 'package:unzip_tar_file_app/tar_file_reader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tar file reader'),
        ),
        body: const TarFileReader(),
      ),
    );
  }
}
