import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Paid media were bought
@immutable
class ChatTransactionPurposePaidMedia extends ChatTransactionPurpose {
  const ChatTransactionPurposePaidMedia({
    required this.messageId,
    required this.media,
  });

  /// [messageId] Identifier of the corresponding message with paid media; can
  /// be 0 or an identifier of a deleted message
  final int messageId;

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;

  static const String constructor = 'chatTransactionPurposePaidMedia';

  static ChatTransactionPurposePaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTransactionPurposePaidMedia(
      messageId: json['message_id'] as int,
      media: List<PaidMedia>.from(
          ((json['media'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PaidMedia.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'media': media.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
