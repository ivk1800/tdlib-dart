import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the original details about the gift
@immutable
class UpgradedGiftOriginalDetails extends TdObject {
  const UpgradedGiftOriginalDetails({
    this.senderId,
    required this.receiverId,
    required this.text,
    required this.date,
  });

  /// [senderId] Identifier of the user or the chat that sent the gift; may be
  /// null if the gift was private
  final MessageSender? senderId;

  /// [receiverId] Identifier of the user or the chat that received the gift
  final MessageSender receiverId;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [date] Point in time (Unix timestamp) when the gift was sent
  final int date;

  static const String constructor = 'upgradedGiftOriginalDetails';

  static UpgradedGiftOriginalDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftOriginalDetails(
      senderId: MessageSender.fromJson(
        json['sender_id'] as Map<String, dynamic>?,
      ),
      receiverId: MessageSender.fromJson(
        json['receiver_id'] as Map<String, dynamic>?,
      )!,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sender_id': senderId?.toJson(),
    'receiver_id': receiverId.toJson(),
    'text': text.toJson(),
    'date': date,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
