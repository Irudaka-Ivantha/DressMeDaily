import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sdgp_test01/core/app_export.dart';
import 'dart:io';
import 'package:sdgp_test01/presentation/Instructions_page/instructions_page.dart';
import 'package:sdgp_test01/presentation/Gender_selection/gender_selection.dart';
class Profile_picture extends StatefulWidget {
  const Profile_picture({Key? key}) : super(key: key);

  @override
  _Profile_pictureState createState() => _Profile_pictureState();
}

class _Profile_pictureState extends State<Profile_picture> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 35.0),
            child: Column(
              children: [
                Container(
                    height: 6.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(color: appTheme.black900),

                    child: LinearProgressIndicator(
                        value: 0.70,
                        backgroundColor: appTheme.black900,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            appTheme.lime400))),
                SizedBox(height: 60.0),
                _selectedImage != null
                    ? CircleAvatar(
                  radius: 115.0, // Adjust the size as needed
                  backgroundImage: FileImage(_selectedImage!),
                )
                    : CircleAvatar(
                  radius: 115.0, // Adjust the size as needed
                  backgroundColor: Colors.grey, // Default color
                  child: Text(
                    "Add a profile picture",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),

                  ),
                ),
                SizedBox(height: 50.0),
                Container(
                  width: 160,
                  padding: EdgeInsets.all(8.0), // Optional padding
                  decoration: BoxDecoration(
                    color: Colors.grey, // Set the color to gray
                    borderRadius: BorderRadius.circular(20), // Set the border radius to 20
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.camera_alt),
                        iconSize: 50.0,
                        onPressed: () {
                          pickImageFromCamera();
                        },
                      ),

                      IconButton(
                        icon: Icon(Icons.photo_library),
                        iconSize: 50.0,
                        onPressed: () {
                          pickImageFromGallery();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 90.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 50.0),
                    child: GestureDetector(
                      onTap: () {
                        // Modified navigation logic
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Instructions_page()), // Replace Instructions_page with your actual widget class
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min, // To keep the column size only as big as its children
                        children: <Widget>[
                          SizedBox(height: 260), // Keeping the SizedBox for spacing
                          Container(
                            margin: EdgeInsets.only(right: 20.0), // Adjust the margin value as needed
                            child: Text(
                              "Next",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        iconSize: 40.0, // Increase the size as needed, here it's set to 30.0
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        TextButton(
          onPressed: () {
            // Navigate to GenderSelectionScreen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Gender_selection()), // Replace with the actual name of your GenderSelectionScreen widget
            );
          },
          child: Text(
            "Skip",
            style: TextStyle(
              color: Colors.black, // Text color set to black
              fontSize: 18.0,      // Font size set to 18
              fontWeight: FontWeight.normal, // Optional: Adjust the font weight as needed
            ),
          ),
        ),

      ],
      // Rest of your AppBar properties
    );
  }

  Future<void> pickImageFromGallery() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage == null) return;

    setState(() {
      _selectedImage = File(pickedImage.path);
    });
  }

  Future<void> pickImageFromCamera() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedImage == null) return;

    setState(() {
      _selectedImage = File(pickedImage.path);
    });
  }
}
