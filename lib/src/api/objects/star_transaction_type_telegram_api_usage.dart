import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a payment for Telegram API usage; for bots only
@immutable
class StarTransactionTypeTelegramApiUsage extends StarTransactionType {
  const StarTransactionTypeTelegramApiUsage({required this.requestCount});

  /// [requestCount] The number of billed requests
  final int requestCount;

  static const String constructor = 'starTransactionTypeTelegramApiUsage';

  static StarTransactionTypeTelegramApiUsage? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeTelegramApiUsage(
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
