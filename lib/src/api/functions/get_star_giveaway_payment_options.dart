import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns available options for Telegram Star giveaway creation
/// Returns [StarGiveawayPaymentOptions]
@immutable
class GetStarGiveawayPaymentOptions extends TdFunction {
  const GetStarGiveawayPaymentOptions();

  static const String constructor = 'getStarGiveawayPaymentOptions';

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
