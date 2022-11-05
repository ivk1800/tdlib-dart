import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Marks all mentions in a forum topic as read
/// Returns [Ok]
@immutable
class ReadAllMessageThreadMentions extends TdFunction {
  const ReadAllMessageThreadMentions({
    required this.chatId,
    required this.messageThreadId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] Message thread identifier in which mentions are marked
  /// as read
  final int messageThreadId;

  static const String constructor = 'readAllMessageThreadMentions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
