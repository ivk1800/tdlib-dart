import '../tdapi.dart';

/// Represents a user contact
class InlineQueryResultContact extends InlineQueryResult {
  InlineQueryResultContact(
      {required this.id, required this.contact, this.thumbnail});

  /// [id] Unique identifier of the query result
  final String id;

  /// [contact] A user contact
  final Contact contact;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String CONSTRUCTOR = 'inlineQueryResultContact';

  static InlineQueryResultContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultContact(
        id: json['id'],
        contact: Contact.fromJson(json['contact'])!,
        thumbnail: Thumbnail.fromJson(json['thumbnail']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'contact': this.contact.toJson(),
        'thumbnail': this.thumbnail?.toJson(),
        '@type': CONSTRUCTOR
      };
}
