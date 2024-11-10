import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a general file
@immutable
class LinkPreviewTypeDocument extends LinkPreviewType {
  const LinkPreviewTypeDocument({
    required this.document,
  });

  /// [document] The document description
  final Document document;

  static const String constructor = 'linkPreviewTypeDocument';

  static LinkPreviewTypeDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeDocument(
      document: Document.fromJson(json['document'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'document': document.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
