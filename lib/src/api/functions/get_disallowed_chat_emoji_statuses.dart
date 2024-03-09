import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of emoji statuses, which can't be used as chat emoji
/// status, even they are from a sticker set with
/// is_allowed_as_chat_emoji_status == true
/// Returns [EmojiStatuses]
@immutable
class GetDisallowedChatEmojiStatuses extends TdFunction {
  const GetDisallowedChatEmojiStatuses();

  static const String constructor = 'getDisallowedChatEmojiStatuses';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
