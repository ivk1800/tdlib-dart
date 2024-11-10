import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the sticker to be used as representation of the Telegram Premium
/// subscription
/// Returns [Sticker]
@immutable
class GetPremiumInfoSticker extends TdFunction {
  const GetPremiumInfoSticker({
    required this.monthCount,
  });

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active
  final int monthCount;

  static const String constructor = 'getPremiumInfoSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'month_count': monthCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
