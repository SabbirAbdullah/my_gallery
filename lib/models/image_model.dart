class ImageModel {
  final String id;
  final String url;
  final String label;

  ImageModel({required this.id, required this.url, required this.label});

  factory ImageModel.fromMap(Map<String, dynamic> data, String id) {
    return ImageModel(
      id: id,
      url: data['url'],
      label: data['label'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'label': label,
    };
  }
}
