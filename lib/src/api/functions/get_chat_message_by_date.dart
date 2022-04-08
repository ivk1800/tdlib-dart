import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the last message sent in a chat no later than the specified date
/// Returns [Message]
@immutable
class GetChatMessageByDate extends TdFunction {
  const GetChatMessageByDate({
    required this.chatId,
    required this.date,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [date] Point in time (Unix timestamp) relative to which to search for
  /// messages
  final int date;

  static const String constructor = 'getChatMessageByDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
