import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of emoji statuses
@immutable
class EmojiStatuses extends TdObject {
  const EmojiStatuses({
    required this.emojiStatuses,
  });

  /// [emojiStatuses] The list of emoji statuses
  final List<EmojiStatus> emojiStatuses;

  static const String constructor = 'emojiStatuses';

  static EmojiStatuses? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatuses(
      emojiStatuses: List<EmojiStatus>.from((json['emoji_statuses'] ?? [])
          .map((item) => EmojiStatus.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji_statuses': emojiStatuses.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
