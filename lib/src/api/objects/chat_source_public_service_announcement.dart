import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The chat contains a public service announcement
class ChatSourcePublicServiceAnnouncement extends ChatSource {
  ChatSourcePublicServiceAnnouncement({required this.type, required this.text});

  /// [type] The type of the announcement
  final String type;

  /// [text] The text of the announcement
  final String text;

  static const String CONSTRUCTOR = 'chatSourcePublicServiceAnnouncement';

  static ChatSourcePublicServiceAnnouncement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatSourcePublicServiceAnnouncement(
        type: json['type'], text: json['text']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type, 'text': this.text, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
