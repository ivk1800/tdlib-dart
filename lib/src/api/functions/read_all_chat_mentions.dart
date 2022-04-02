import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Marks all mentions in a chat as read
/// Returns [Ok]
class ReadAllChatMentions extends TdFunction {
  ReadAllChatMentions({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'readAllChatMentions';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
