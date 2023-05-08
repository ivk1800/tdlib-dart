import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A background previously set in the chat; for chat backgrounds only
@immutable
class InputBackgroundPrevious extends InputBackground {
  const InputBackgroundPrevious({
    required this.messageId,
  });

  /// [messageId] Identifier of the message with the background
  final int messageId;

  static const String constructor = 'inputBackgroundPrevious';

  static InputBackgroundPrevious? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBackgroundPrevious(
      messageId: json['message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
