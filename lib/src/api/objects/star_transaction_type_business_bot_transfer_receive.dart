import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transfer of Telegram Stars from a business account;
/// for bots only
@immutable
class StarTransactionTypeBusinessBotTransferReceive
    extends StarTransactionType {
  const StarTransactionTypeBusinessBotTransferReceive({required this.userId});

  /// [userId] Identifier of the user that sent Telegram Stars
  final int userId;

  static const String constructor =
      'starTransactionTypeBusinessBotTransferReceive';

  static StarTransactionTypeBusinessBotTransferReceive? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBusinessBotTransferReceive(
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
