import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a public forward as a message
@immutable
class PublicForwardMessage extends PublicForward {
  const PublicForwardMessage({
    required this.message,
  });

  /// [message] Information about the message
  final Message message;

  static const String constructor = 'publicForwardMessage';

  static PublicForwardMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicForwardMessage(
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
