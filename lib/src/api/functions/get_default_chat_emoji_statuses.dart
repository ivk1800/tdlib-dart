import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns default emoji statuses for chats
/// Returns [EmojiStatuses]
@immutable
class GetDefaultChatEmojiStatuses extends TdFunction {
  const GetDefaultChatEmojiStatuses();

  static const String constructor = 'getDefaultChatEmojiStatuses';

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
