import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with an upgraded gift
@immutable
class PushMessageContentUpgradedGift extends PushMessageContent {
  const PushMessageContentUpgradedGift({required this.isUpgrade});

  /// [isUpgrade] True, if the gift was obtained by upgrading of a previously
  /// received gift; otherwise, this is a transferred or resold gift
  final bool isUpgrade;

  static const String constructor = 'pushMessageContentUpgradedGift';

  static PushMessageContentUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentUpgradedGift(
      isUpgrade: json['is_upgrade'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_upgrade': isUpgrade,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
