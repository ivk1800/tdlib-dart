import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a user contact
@immutable
class InlineQueryResultContact extends InlineQueryResult {
  const InlineQueryResultContact({
    required this.id,
    required this.contact,
    this.thumbnail,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [contact] A user contact
  final Contact contact;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String constructor = 'inlineQueryResultContact';

  static InlineQueryResultContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultContact(
      id: json['id'],
      contact: Contact.fromJson(json['contact'])!,
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'contact': contact.toJson(),
        'thumbnail': thumbnail?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
