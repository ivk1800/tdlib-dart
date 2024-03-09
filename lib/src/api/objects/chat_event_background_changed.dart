import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat background was changed
@immutable
class ChatEventBackgroundChanged extends ChatEventAction {
  const ChatEventBackgroundChanged({
    this.oldBackground,
    this.newBackground,
  });

  /// [oldBackground] Previous background; may be null if none
  final ChatBackground? oldBackground;

  /// [newBackground] New background; may be null if none
  final ChatBackground? newBackground;

  static const String constructor = 'chatEventBackgroundChanged';

  static ChatEventBackgroundChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventBackgroundChanged(
      oldBackground: ChatBackground.fromJson(
          json['old_background'] as Map<String, dynamic>?),
      newBackground: ChatBackground.fromJson(
          json['new_background'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_background': oldBackground?.toJson(),
        'new_background': newBackground?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
