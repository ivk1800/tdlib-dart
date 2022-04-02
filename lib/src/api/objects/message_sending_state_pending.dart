import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The message is being sent now, but has not yet been delivered to the
/// server
class MessageSendingStatePending extends MessageSendingState {
  const MessageSendingStatePending();

  static const String CONSTRUCTOR = 'messageSendingStatePending';

  static MessageSendingStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSendingStatePending();
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
