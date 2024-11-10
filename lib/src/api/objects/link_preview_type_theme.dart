import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a cloud theme. TDLib has no theme support yet
@immutable
class LinkPreviewTypeTheme extends LinkPreviewType {
  const LinkPreviewTypeTheme({
    required this.documents,
    this.settings,
  });

  /// [documents] The list of files with theme description
  final List<Document> documents;

  /// [settings] Settings for the cloud theme; may be null if unknown
  final ThemeSettings? settings;

  static const String constructor = 'linkPreviewTypeTheme';

  static LinkPreviewTypeTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeTheme(
      documents: List<Document>.from(
          ((json['documents'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Document.fromJson(item))
              .toList()),
      settings:
          ThemeSettings.fromJson(json['settings'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'documents': documents.map((item) => item.toJson()).toList(),
        'settings': settings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
