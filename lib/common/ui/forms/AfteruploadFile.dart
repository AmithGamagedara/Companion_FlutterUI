// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'uploadpopuppage.dart';

class AfterUploadFilePage extends StatefulWidget {
  const AfterUploadFilePage({Key? key}) : super(key: key);

  @override
  _AfterUploadFilePageState createState() => _AfterUploadFilePageState();
}

class _AfterUploadFilePageState extends State<AfterUploadFilePage> {
  final List<String> _files = [];

  void _selectFiles() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.any);
    if (result != null) {
      setState(() {
        _files.add(result.files.single.path!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: const Color.fromRGBO(88, 101, 242, 1.0),
        title: Text(
          'Companion',
          style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              child: Container(
                color: const Color.fromRGBO(88, 101, 242, 1.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Color.fromRGBO(88, 101, 242, 1.0),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Upload',
                              style: TextStyle(
                                color: const Color.fromRGBO(88, 101, 242, 1.0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.raleway().fontFamily,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: _selectFiles,
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: DottedBorder(
                    dashPattern: const [4],
                    strokeWidth: 2,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Legal Document',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Uploaded',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 16),
                            Icon(
                              Icons.folder_copy,
                              color: Color.fromRGBO(88, 101, 242, 1.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const PointedTextList(
              items: [
                'the fundraiser must upload a letter from local area government officer.',
                'upload recipients approval letter.',
                'upload approval from ministry and approval from social service center.',
                'approvel letter from banks about the account detail verification',
              ],
            ),
            SizedBox(height: 25,),
            SizedBox(width: 250, child: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => UploadPopupPage(),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(88, 101, 242, 1.0),
                ),
                child: const Text('Send'),
              ),
            )),

          ],
        ),
      ),
    );
  }
}

// instructions widget
class PointedTextList extends StatelessWidget {
  final List<String> items;

  const PointedTextList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: items
            .map((item) => ListTile(
                  title: Text(
                    item,
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(left: 4.0),
                ))
            .toList(),
      ),
    );
  }
}
