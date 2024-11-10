import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction with Telegram through a bot
@immutable
class StarTransactionPartnerTelegram extends StarTransactionPartner {
  const StarTransactionPartnerTelegram();

  static const String constructor = 'starTransactionPartnerTelegram';

  static StarTransactionPartnerTelegram? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionPartnerTelegram();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
