import '../tdapi.dart';

/// A message with a game
class PushMessageContentGame extends PushMessageContent {
  PushMessageContentGame({required this.title, required this.isPinned});

  /// [title] Game title, empty for pinned game message
  final String title;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentGame';

  static PushMessageContentGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentGame(
        title: json['title'], isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'title': this.title, 'is_pinned': this.isPinned, '@type': CONSTRUCTOR};
}
