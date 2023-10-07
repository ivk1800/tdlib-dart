import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a boost of a chat
@immutable
class ChatBoost extends TdObject {
  const ChatBoost({
    required this.userId,
    required this.expirationDate,
  });

  /// [userId] Identifier of a user that boosted the chat
  final int userId;

  /// [expirationDate] Point in time (Unix timestamp) when the boost will
  /// automatically expire if the user will not prolongate their Telegram
  /// Premium subscription
  final int expirationDate;

  static const String constructor = 'chatBoost';

  static ChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoost(
      userId: json['user_id'] as int,
      expirationDate: json['expiration_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'expiration_date': expirationDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
