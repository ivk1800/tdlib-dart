import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a document of any type
@immutable
class Document extends TdObject {
  const Document({
    required this.fileName,
    required this.mimeType,
    this.minithumbnail,
    this.thumbnail,
    required this.document,
  });

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  final String mimeType;

  /// [minithumbnail] Document minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Document thumbnail in JPEG or PNG format (PNG will be used
  /// only for background patterns); as defined by the sender; may be null
  final Thumbnail? thumbnail;

  /// [document] File containing the document
  final File document;

  static const String constructor = 'document';

  static Document? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Document(
      fileName: json['file_name'],
      mimeType: json['mime_type'],
      minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
      document: File.fromJson(json['document'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_name': fileName,
        'mime_type': mimeType,
        'minithumbnail': minithumbnail?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'document': document.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
