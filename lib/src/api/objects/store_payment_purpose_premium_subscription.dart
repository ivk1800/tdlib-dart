import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user subscribed to Telegram Premium
@immutable
class StorePaymentPurposePremiumSubscription extends StorePaymentPurpose {
  const StorePaymentPurposePremiumSubscription({
    required this.isRestore,
  });

  /// [isRestore] Pass true if this is a restore of a Telegram Premium purchase;
  /// only for App Store
  final bool isRestore;

  static const String constructor = 'storePaymentPurposePremiumSubscription';

  static StorePaymentPurposePremiumSubscription? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumSubscription(
      isRestore: json['is_restore'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_restore': isRestore,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
