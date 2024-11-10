import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a giveaway
@immutable
abstract class GiveawayInfo extends TdObject {
  const GiveawayInfo();

  static const String constructor = 'giveawayInfo';

  /// Inherited by:
  /// [GiveawayInfoCompleted]
  /// [GiveawayInfoOngoing]
  static GiveawayInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiveawayInfoCompleted.constructor:
        return GiveawayInfoCompleted.fromJson(json);
      case GiveawayInfoOngoing.constructor:
        return GiveawayInfoOngoing.fromJson(json);
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
