// ignore_for_file: library_private_types_in_public_api, unused_field, sort_child_properties_last, unused_element

import 'package:companion_app/common/ui/forms/uploadFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

import 'donationUpView.dart';

class CreatePostPage extends StatefulWidget {
  final String companion;

  const CreatePostPage({Key? key, required this.companion}) : super(key: key);

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  String? _postText;
  final List<String> _photos = [];
  final List<String> _videos = [];
  String? _location;
  bool _raiseFunds = false;
  var up = '20';

  void _selectPhotos() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _photos.add(pickedFile.path);
      });
      if(up=='20'){
        // Within the `FirstRoute` widget
         {
          print("doneeeeeeeee");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateUpdate(companion: 'companion',)),
          );
        };
      }


      void afterUpload() {
        if (pickedFile != null) {
          Container(
            child: Image.asset(
              'assets/images/kusataniwahanak.jpeg', height: 100,),
          );
        }
      }
    }
  }


  void _selectVideos() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.video);
    if (result != null) {
      setState(() {
        _videos.add(result.files.single.path!);
      });
    }
  }

  void _selectLocation() {
    //
  }

  void _toggleRaiseFunds(bool value) {
    setState(() {
      _raiseFunds = value;
    });
  }

  void _createPost() {
    //
  }

  void _nextAction() {
    if (_raiseFunds) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const UploadFilePage(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Done'),
          duration: Duration(seconds: 1),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: const Color.fromRGBO(88, 101, 242, 1.0),
        title: Text(
          'COMPANION',
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.bold,
            fontSize: 22.5,
          ),
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
                              'Create Post',
                              style: TextStyle(
                                color: const Color.fromRGBO(88, 101, 242, 1.0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts
                                    .raleway()
                                    .fontFamily,
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
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              _postText = value;
                            });
                          },
                          minLines: 8,
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText: 'Want to start a charity?',
                            hintStyle: TextStyle(
                                fontFamily: GoogleFonts
                                    .raleway()
                                    .fontFamily),
                            border: InputBorder.none,
                          ),
                        ),
                      ),

                    ],
                  ),

                  //this the place

                  const SizedBox(height: 16),
                  Column(
                    children: [
                      const Divider(
                        color: Colors.grey,
                      ),
                      GestureDetector(
                        onTap: _selectPhotos,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/images.svg',
                              height: 25,
                            ),
                            const SizedBox(width: 16),
                            const Text(
                              'Photos',
                              style: TextStyle(
                                color: Color.fromRGBO(88, 101, 242, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      GestureDetector(
                        onTap: _selectVideos,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/video.svg',
                              height: 25,
                            ),
                            const SizedBox(width: 16),
                            const Text(
                              'Videos',
                              style: TextStyle(
                                color: Color.fromRGBO(88, 101, 242, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      GestureDetector(
                        onTap: _selectLocation,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/location.svg',
                              height: 25,
                            ),
                            const SizedBox(width: 16),
                            const Text(
                              'Location',
                              style: TextStyle(
                                color: Color.fromRGBO(88, 101, 242, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Raise Funds',
                        style: TextStyle(
                          fontFamily: GoogleFonts
                              .raleway()
                              .fontFamily,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromRGBO(88, 101, 242, 1.0),
                        ),
                      ),
                      Switch(
                        value: _raiseFunds,
                        onChanged: _toggleRaiseFunds,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (_raiseFunds) _createPostButton(),
                  if (!_raiseFunds) _createPostButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createPostButton() {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        onPressed: _nextAction,
        child: Text(
          _raiseFunds ? 'Next' : 'Post',
          style: TextStyle(
            fontFamily: GoogleFonts
                .raleway()
                .fontFamily,
            fontWeight: FontWeight.w800,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.blue.shade200;
                } else if (states.contains(MaterialState.disabled)) {
                  return Colors.grey;
                }
                return const Color.fromRGBO(88, 101, 242, 1.0);
              }),
        ),
      ),
    );
  }
}
