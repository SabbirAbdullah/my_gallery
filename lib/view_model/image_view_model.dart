import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import '../models/image_model.dart';

class ImageViewModel extends GetxController {
  final RxList<ImageModel> images = <ImageModel>[].obs;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchImages();
    super.onInit();
  }

  Future<void> fetchImages() async {
    try {
      isLoading(true);
      final snapshot = await _db.collection('images').get();

      images.value = snapshot.docs
          .map((doc) => ImageModel.fromMap(doc.data(), doc.id))
          .toList();
    } catch (e) {
      //handle error
      print('Error fetching data :$e');
    } finally {
      isLoading(false);
    }
  }

  Future<void> addImage(File file, String label) async {
    final ref = _storage.ref().child('images/${file.path.split('/').last}');
    await ref.putFile(file);
    final url = await ref.getDownloadURL();
    final docRef = await _db.collection('images').add({
      'url': url,
      'label': label,
    });
    images.add(ImageModel(id: docRef.id, url: url, label: label));
  }
}
