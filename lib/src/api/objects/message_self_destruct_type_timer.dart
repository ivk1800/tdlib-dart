import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message will be self-destructed in the specified time after its
/// content was opened
@immutable
class MessageSelfDestructTypeTimer extends MessageSelfDestructType {
  const MessageSelfDestructTypeTimer({
    required this.selfDestructTime,
  });

  /// [selfDestructTime] The message's self-destruct time, in seconds; must be
  /// between 0 and 60 in private chats
  final int selfDestructTime;

  static const String constructor = 'messageSelfDestructTypeTimer';

  static MessageSelfDestructTypeTimer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSelfDestructTypeTimer(
      selfDestructTime: json['self_destruct_time'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'self_destruct_time': selfDestructTime,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
