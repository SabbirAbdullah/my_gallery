import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../util/constants.dart';
import '../view_model/image_view_model.dart';


class AddImageScreen extends StatefulWidget {
  @override
  _AddImageScreenState createState() => _AddImageScreenState();
}

class _AddImageScreenState extends State<AddImageScreen> {
  final ImageViewModel viewModel = Get.put(ImageViewModel());
  final TextEditingController labelController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  XFile? _pickedFile;
  File? _imageFile;
  bool _isUploading = false;


  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _pickedFile = pickedFile;
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _uploadImage() async {
    if (_pickedFile != null && labelController.text.isNotEmpty) {
      setState(() {
        _isUploading = true;
      });
      await viewModel.addImage(_imageFile!, labelController.text);
      setState(() {
        _isUploading = false;
      });

      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Image',style: TextStyle(fontFamily: 'DancingScript'),)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            if (_imageFile != null)
              SizedBox(
                height: 200,
                child: Image.file(_imageFile!),
              ),
            TextField(
              controller: labelController,
              decoration: const InputDecoration(labelText: 'Label',),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _pickImage,
              child: const Text('Pick Image',style: TextStyle(color: textWhite,fontSize: 20),),
              style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(buttonColor)),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _uploadImage,
              child: const Text('Upload Image',style: TextStyle(color: textWhite,fontSize: 20),),
              style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(buttonColor)),
            ),
            if(_isUploading)
              const Padding(padding: EdgeInsets.all(15),
              child: CircularProgressIndicator(),)
          ],
        ),
      ),
    );
  }
}
