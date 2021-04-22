import '../tdapi.dart';

/// A general message with hidden content
class PushMessageContentHidden extends PushMessageContent {
  PushMessageContentHidden({required this.isPinned});

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentHidden';

  static PushMessageContentHidden? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentHidden(isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'is_pinned': this.isPinned, '@type': CONSTRUCTOR};
}
