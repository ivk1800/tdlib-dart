import '../tdapi.dart';

/// The chat title was changed
class ChatEventTitleChanged extends ChatEventAction {
  ChatEventTitleChanged({required this.oldTitle, required this.newTitle});

  /// [oldTitle] Previous chat title
  final String oldTitle;

  /// [newTitle] New chat title
  final String newTitle;

  static const String CONSTRUCTOR = 'chatEventTitleChanged';

  static ChatEventTitleChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventTitleChanged(
        oldTitle: json['old_title'], newTitle: json['new_title']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_title': this.oldTitle,
        'new_title': this.newTitle,
        '@type': CONSTRUCTOR
      };
}
