import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Launches a prepaid Telegram Premium giveaway
/// Returns [Ok]
@immutable
class LaunchPrepaidPremiumGiveaway extends TdFunction {
  const LaunchPrepaidPremiumGiveaway({
    required this.giveawayId,
    required this.parameters,
  });

  /// [giveawayId] Unique identifier of the prepaid giveaway
  final int giveawayId;

  /// [parameters] Giveaway parameters
  final PremiumGiveawayParameters parameters;

  static const String constructor = 'launchPrepaidPremiumGiveaway';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'giveaway_id': giveawayId,
        'parameters': parameters.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
