import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains an HTTPS link to a message in a supergroup or channel, or a forum
/// topic
@immutable
class MessageLink extends TdObject {
  const MessageLink({
    required this.link,
    required this.isPublic,
  });

  /// [link] The link
  final String link;

  /// [isPublic] True, if the link will work for non-members of the chat
  final bool isPublic;

  static const String constructor = 'messageLink';

  static MessageLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLink(
      link: json['link'],
      isPublic: json['is_public'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        'is_public': isPublic,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
