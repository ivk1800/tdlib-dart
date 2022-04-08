import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a document
@immutable
class InlineQueryResultDocument extends InlineQueryResult {
  const InlineQueryResultDocument({
    required this.id,
    required this.document,
    required this.title,
    required this.description,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [document] Document
  final Document document;

  /// [title] Document title
  final String title;

  /// param_[description] Document description
  final String description;

  static const String constructor = 'inlineQueryResultDocument';

  static InlineQueryResultDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultDocument(
      id: json['id'],
      document: Document.fromJson(json['document'])!,
      title: json['title'],
      description: json['description'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'document': document.toJson(),
        'title': title,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
