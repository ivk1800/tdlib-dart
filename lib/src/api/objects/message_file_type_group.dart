import '../tdapi.dart';

/// The messages was exported from a group chat
class MessageFileTypeGroup extends MessageFileType {
  MessageFileTypeGroup({required this.title});

  /// [title] Title of the group chat; may be empty if unrecognized
  final String title;

  static const String CONSTRUCTOR = 'messageFileTypeGroup';

  static MessageFileTypeGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageFileTypeGroup(title: json['title']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'title': this.title, '@type': CONSTRUCTOR};
}
