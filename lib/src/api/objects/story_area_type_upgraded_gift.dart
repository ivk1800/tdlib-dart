import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An area with an upgraded gift
@immutable
class StoryAreaTypeUpgradedGift extends StoryAreaType {
  const StoryAreaTypeUpgradedGift({required this.giftName});

  /// [giftName] Unique name of the upgraded gift
  final String giftName;

  static const String constructor = 'storyAreaTypeUpgradedGift';

  static StoryAreaTypeUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeUpgradedGift(giftName: json['gift_name'] as String);
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift_name': giftName,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
