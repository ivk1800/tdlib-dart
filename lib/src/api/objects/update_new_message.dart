import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A new message was received; can also be an outgoing message
class UpdateNewMessage extends Update {
  UpdateNewMessage({required this.message});

  /// [message] The new message
  final Message message;

  static const String CONSTRUCTOR = 'updateNewMessage';

  static UpdateNewMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewMessage(message: Message.fromJson(json['message'])!);
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
