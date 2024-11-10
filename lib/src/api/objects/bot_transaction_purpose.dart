import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes purpose of a transaction with a bot
@immutable
abstract class BotTransactionPurpose extends TdObject {
  const BotTransactionPurpose();

  static const String constructor = 'botTransactionPurpose';

  /// Inherited by:
  /// [BotTransactionPurposeInvoicePayment]
  /// [BotTransactionPurposePaidMedia]
  static BotTransactionPurpose? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BotTransactionPurposeInvoicePayment.constructor:
        return BotTransactionPurposeInvoicePayment.fromJson(json);
      case BotTransactionPurposePaidMedia.constructor:
        return BotTransactionPurposePaidMedia.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
