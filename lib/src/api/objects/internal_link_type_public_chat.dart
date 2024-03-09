import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a chat by its username. Call searchPublicChat with
/// the given chat username to process the link If the chat is found, open its
/// profile information screen or the chat itself
@immutable
class InternalLinkTypePublicChat extends InternalLinkType {
  const InternalLinkTypePublicChat({
    required this.chatUsername,
  });

  /// [chatUsername] Username of the chat
  final String chatUsername;

  static const String constructor = 'internalLinkTypePublicChat';

  static InternalLinkTypePublicChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePublicChat(
      chatUsername: json['chat_username'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_username': chatUsername,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
