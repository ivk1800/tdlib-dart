import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user subscribed to Telegram Premium
@immutable
class StorePaymentPurposePremiumSubscription extends StorePaymentPurpose {
  const StorePaymentPurposePremiumSubscription({
    required this.isRestore,
    required this.isUpgrade,
  });

  /// [isRestore] Pass true if this is a restore of a Telegram Premium purchase;
  /// only for App Store
  final bool isRestore;

  /// [isUpgrade] Pass true if this is an upgrade from a monthly subscription to
  /// early subscription; only for App Store
  final bool isUpgrade;

  static const String constructor = 'storePaymentPurposePremiumSubscription';

  static StorePaymentPurposePremiumSubscription? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumSubscription(
      isRestore: json['is_restore'],
      isUpgrade: json['is_upgrade'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_restore': isRestore,
        'is_upgrade': isUpgrade,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
