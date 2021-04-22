import '../tdapi.dart';

/// Represents a document
class InlineQueryResultDocument extends InlineQueryResult {
  InlineQueryResultDocument(
      {required this.id,
      required this.document,
      required this.title,
      required this.description});

  /// [id] Unique identifier of the query result
  final String id;

  /// [document] Document
  final Document document;

  /// [title] Document title
  final String title;

  /// param_[description] Document description
  final String description;

  static const String CONSTRUCTOR = 'inlineQueryResultDocument';

  static InlineQueryResultDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultDocument(
        id: json['id'],
        document: Document.fromJson(json['document'])!,
        title: json['title'],
        description: json['description']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'document': this.document.toJson(),
        'title': this.title,
        'description': this.description,
        '@type': CONSTRUCTOR
      };
}
