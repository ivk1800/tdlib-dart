import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The message will be sent when the peer will be online. Applicable to
/// private chats only and when the exact online status of the peer is known
class MessageSchedulingStateSendWhenOnline extends MessageSchedulingState {
  const MessageSchedulingStateSendWhenOnline();

  static const String CONSTRUCTOR = 'messageSchedulingStateSendWhenOnline';

  static MessageSchedulingStateSendWhenOnline? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSchedulingStateSendWhenOnline();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
