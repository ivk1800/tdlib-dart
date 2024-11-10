import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction with Telegram for API usage
@immutable
class StarTransactionPartnerTelegramApi extends StarTransactionPartner {
  const StarTransactionPartnerTelegramApi({
    required this.requestCount,
  });

  /// [requestCount] The number of billed requests
  final int requestCount;

  static const String constructor = 'starTransactionPartnerTelegramApi';

  static StarTransactionPartnerTelegramApi? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionPartnerTelegramApi(
      requestCount: json['request_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'request_count': requestCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
