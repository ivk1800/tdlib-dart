import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about the message sent by answerWebAppQuery
@immutable
class SentWebAppMessage extends TdObject {
  const SentWebAppMessage({
    required this.inlineMessageId,
  });

  /// [inlineMessageId] Identifier of the sent inline message, if known
  final String inlineMessageId;

  static const String constructor = 'sentWebAppMessage';

  static SentWebAppMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SentWebAppMessage(
      inlineMessageId: json['inline_message_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_message_id': inlineMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
