import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message is being sent now, but has not yet been delivered to the
/// server
@immutable
class MessageSendingStatePending extends MessageSendingState {
  const MessageSendingStatePending({
    required this.sendingId,
  });

  /// [sendingId] Non-persistent message sending identifier, specified by the
  /// application
  final int sendingId;

  static const String constructor = 'messageSendingStatePending';

  static MessageSendingStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendingStatePending(
      sendingId: json['sending_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sending_id': sendingId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
