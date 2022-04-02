import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message was unpinned
class ChatEventMessageUnpinned extends ChatEventAction {
  ChatEventMessageUnpinned({required this.message});

  /// [message] Unpinned message
  final Message message;

  static const String CONSTRUCTOR = 'chatEventMessageUnpinned';

  static ChatEventMessageUnpinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageUnpinned(
        message: Message.fromJson(json['message'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'message': this.message.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
