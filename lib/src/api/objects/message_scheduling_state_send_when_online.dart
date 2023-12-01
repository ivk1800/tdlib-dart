import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message will be sent when the other user is online. Applicable to
/// private chats only and when the exact online status of the other user is
/// known
@immutable
class MessageSchedulingStateSendWhenOnline extends MessageSchedulingState {
  const MessageSchedulingStateSendWhenOnline();

  static const String constructor = 'messageSchedulingStateSendWhenOnline';

  static MessageSchedulingStateSendWhenOnline? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSchedulingStateSendWhenOnline();
  }

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
