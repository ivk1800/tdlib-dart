import '../tdapi.dart';

/// A small image inside the text
class RichTextIcon extends RichText {
  RichTextIcon(
      {required this.document, required this.width, required this.height});

  /// [document] The image represented as a document. The image can be in GIF,
  /// JPEG or PNG format
  final Document document;

  /// [width] Width of a bounding box in which the image should be shown; 0 if
  /// unknown
  final int width;

  /// [height] Height of a bounding box in which the image should be shown; 0 if
  /// unknown
  final int height;

  static const String CONSTRUCTOR = 'richTextIcon';

  static RichTextIcon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextIcon(
        document: Document.fromJson(json['document'])!,
        width: json['width'],
        height: json['height']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'document': this.document.toJson(),
        'width': this.width,
        'height': this.height,
        '@type': CONSTRUCTOR
      };
}
