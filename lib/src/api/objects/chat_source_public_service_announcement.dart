import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat contains a public service announcement
@immutable
class ChatSourcePublicServiceAnnouncement extends ChatSource {
  const ChatSourcePublicServiceAnnouncement({
    required this.type,
    required this.text,
  });

  /// [type] The type of the announcement
  final String type;

  /// [text] The text of the announcement
  final String text;

  static const String constructor = 'chatSourcePublicServiceAnnouncement';

  static ChatSourcePublicServiceAnnouncement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatSourcePublicServiceAnnouncement(
      type: json['type'] as String,
      text: json['text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
