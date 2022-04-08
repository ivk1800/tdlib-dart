import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A small image inside the text
@immutable
class RichTextIcon extends RichText {
  const RichTextIcon({
    required this.document,
    required this.width,
    required this.height,
  });

  /// [document] The image represented as a document. The image can be in GIF,
  /// JPEG or PNG format
  final Document document;

  /// [width] Width of a bounding box in which the image must be shown; 0 if
  /// unknown
  final int width;

  /// [height] Height of a bounding box in which the image must be shown; 0 if
  /// unknown
  final int height;

  static const String constructor = 'richTextIcon';

  static RichTextIcon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextIcon(
      document: Document.fromJson(json['document'])!,
      width: json['width'],
      height: json['height'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'document': document.toJson(),
        'width': width,
        'height': height,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
