import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the last message sent in a chat no later than the specified date
/// Returns [Message]
class GetChatMessageByDate extends TdFunction {
  GetChatMessageByDate({required this.chatId, required this.date});

  /// [chatId] Chat identifier
  final int chatId;

  /// [date] Point in time (Unix timestamp) relative to which to search for
  /// messages
  final int date;

  static const String CONSTRUCTOR = 'getChatMessageByDate';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'date': this.date, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
