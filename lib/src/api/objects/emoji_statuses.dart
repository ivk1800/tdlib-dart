import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of custom emoji identifiers, which can be set as emoji
/// statuses
@immutable
class EmojiStatuses extends TdObject {
  const EmojiStatuses({
    required this.customEmojiIds,
  });

  /// [customEmojiIds] The list of custom emoji identifiers
  final List<int> customEmojiIds;

  static const String constructor = 'emojiStatuses';

  static EmojiStatuses? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatuses(
      customEmojiIds: List<int>.from(
          ((json['custom_emoji_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_emoji_ids': customEmojiIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
