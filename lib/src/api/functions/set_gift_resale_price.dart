import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes resale price of a unique gift owned by the current user
/// Returns [Ok]
@immutable
class SetGiftResalePrice extends TdFunction {
  const SetGiftResalePrice({
    required this.receivedGiftId,
    required this.resaleStarCount,
  });

  /// [receivedGiftId] Identifier of the unique gift
  final String receivedGiftId;

  /// [resaleStarCount] The new price for the unique gift; 0 or
  /// getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max").
  /// Pass 0 to disallow gift resale. The current user will receive
  /// getOption("gift_resale_earnings_per_mille") Telegram Stars for each 1000
  /// Telegram Stars paid for the gift
  final int resaleStarCount;

  static const String constructor = 'setGiftResalePrice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'received_gift_id': receivedGiftId,
    'resale_star_count': resaleStarCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
