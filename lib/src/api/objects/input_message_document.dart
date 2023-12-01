import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A document message (general file)
@immutable
class InputMessageDocument extends InputMessageContent {
  const InputMessageDocument({
    required this.document,
    this.thumbnail,
    required this.disableContentTypeDetection,
    this.caption,
  });

  /// [document] Document to be sent
  final InputFile document;

  /// [thumbnail] Document thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [disableContentTypeDetection] True, if automatic file type detection is
  /// disabled and the document must be sent as a file. Always true for files
  /// sent to secret chats
  final bool disableContentTypeDetection;

  /// [caption] Document caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String constructor = 'inputMessageDocument';

  static InputMessageDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageDocument(
      document: InputFile.fromJson(json['document'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      disableContentTypeDetection:
          json['disable_content_type_detection'] as bool,
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'document': document.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'disable_content_type_detection': disableContentTypeDetection,
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
