import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A document message (general file)
class InputMessageDocument extends InputMessageContent {
  InputMessageDocument(
      {required this.document,
      this.thumbnail,
      required this.disableContentTypeDetection,
      this.caption});

  /// [document] Document to be sent
  final InputFile document;

  /// [thumbnail] Document thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [disableContentTypeDetection] If true, automatic file type detection will
  /// be disabled and the document will be always sent as file. Always true for
  /// files sent to secret chats
  final bool disableContentTypeDetection;

  /// [caption] Document caption; pass null to use an empty caption;
  /// 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String CONSTRUCTOR = 'inputMessageDocument';

  static InputMessageDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageDocument(
        document: InputFile.fromJson(json['document'])!,
        thumbnail: InputThumbnail.fromJson(json['thumbnail']),
        disableContentTypeDetection: json['disable_content_type_detection'],
        caption: FormattedText.fromJson(json['caption']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'document': this.document.toJson(),
        'thumbnail': this.thumbnail?.toJson(),
        'disable_content_type_detection': this.disableContentTypeDetection,
        'caption': this.caption?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
