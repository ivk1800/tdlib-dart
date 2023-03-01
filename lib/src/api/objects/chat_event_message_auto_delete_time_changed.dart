import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message auto-delete timer was changed
@immutable
class ChatEventMessageAutoDeleteTimeChanged extends ChatEventAction {
  const ChatEventMessageAutoDeleteTimeChanged({
    required this.oldMessageAutoDeleteTime,
    required this.newMessageAutoDeleteTime,
  });

  /// [oldMessageAutoDeleteTime] Previous value of message_auto_delete_time
  final int oldMessageAutoDeleteTime;

  /// [newMessageAutoDeleteTime] New value of message_auto_delete_time
  final int newMessageAutoDeleteTime;

  static const String constructor = 'chatEventMessageAutoDeleteTimeChanged';

  static ChatEventMessageAutoDeleteTimeChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageAutoDeleteTimeChanged(
      oldMessageAutoDeleteTime: json['old_message_auto_delete_time'],
      newMessageAutoDeleteTime: json['new_message_auto_delete_time'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_message_auto_delete_time': oldMessageAutoDeleteTime,
        'new_message_auto_delete_time': newMessageAutoDeleteTime,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
