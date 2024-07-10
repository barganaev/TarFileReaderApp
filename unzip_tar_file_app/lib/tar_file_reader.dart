import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class TarFileReader extends StatefulWidget {
  const TarFileReader({super.key});

  @override
  State<TarFileReader> createState() => _TarFileReaderState();
}

class _TarFileReaderState extends State<TarFileReader> {
  final inputStream = InputFileStream('path');
  String doc_names = '';

  Future<FilePickerResult?> getDocs() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['tar', 'gz'],
    );
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                getDocs();
                print('${getDocs().toString()}');
              }, 
              child: const Text('Click Me!'),
            ),
          ],
        ),
      ),
    );
  }
}