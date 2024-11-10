import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes source or recipient of a transaction with Telegram Stars
@immutable
abstract class StarTransactionPartner extends TdObject {
  const StarTransactionPartner();

  static const String constructor = 'starTransactionPartner';

  /// Inherited by:
  /// [StarTransactionPartnerAppStore]
  /// [StarTransactionPartnerBot]
  /// [StarTransactionPartnerBusiness]
  /// [StarTransactionPartnerChat]
  /// [StarTransactionPartnerFragment]
  /// [StarTransactionPartnerGooglePlay]
  /// [StarTransactionPartnerTelegramAds]
  /// [StarTransactionPartnerTelegramApi]
  /// [StarTransactionPartnerTelegram]
  /// [StarTransactionPartnerUnsupported]
  /// [StarTransactionPartnerUser]
  static StarTransactionPartner? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StarTransactionPartnerAppStore.constructor:
        return StarTransactionPartnerAppStore.fromJson(json);
      case StarTransactionPartnerBot.constructor:
        return StarTransactionPartnerBot.fromJson(json);
      case StarTransactionPartnerBusiness.constructor:
        return StarTransactionPartnerBusiness.fromJson(json);
      case StarTransactionPartnerChat.constructor:
        return StarTransactionPartnerChat.fromJson(json);
      case StarTransactionPartnerFragment.constructor:
        return StarTransactionPartnerFragment.fromJson(json);
      case StarTransactionPartnerGooglePlay.constructor:
        return StarTransactionPartnerGooglePlay.fromJson(json);
      case StarTransactionPartnerTelegram.constructor:
        return StarTransactionPartnerTelegram.fromJson(json);
      case StarTransactionPartnerTelegramAds.constructor:
        return StarTransactionPartnerTelegramAds.fromJson(json);
      case StarTransactionPartnerTelegramApi.constructor:
        return StarTransactionPartnerTelegramApi.fromJson(json);
      case StarTransactionPartnerUnsupported.constructor:
        return StarTransactionPartnerUnsupported.fromJson(json);
      case StarTransactionPartnerUser.constructor:
        return StarTransactionPartnerUser.fromJson(json);
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
