import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes current boost status of a chat
@immutable
class ChatBoostStatus extends TdObject {
  const ChatBoostStatus({
    required this.isBoosted,
    required this.level,
    required this.boostCount,
    required this.currentLevelBoostCount,
    required this.nextLevelBoostCount,
    required this.premiumMemberCount,
    required this.premiumMemberPercentage,
  });

  /// [isBoosted] True, if the current user has already boosted the chat
  final bool isBoosted;

  /// [level] Current boost level of the chat
  final int level;

  /// [boostCount] The number of times the chat was boosted
  final int boostCount;

  /// [currentLevelBoostCount] The number of boosts added to reach the current
  /// level
  final int currentLevelBoostCount;

  /// [nextLevelBoostCount] The number of boosts needed to reach the next level;
  /// 0 if the next level isn't available
  final int nextLevelBoostCount;

  /// [premiumMemberCount] Approximate number of Telegram Premium subscribers
  /// joined the chat; always 0 if the current user isn't an administrator in
  /// the chat
  final int premiumMemberCount;

  /// [premiumMemberPercentage] A percentage of Telegram Premium subscribers
  /// joined the chat; always 0 if the current user isn't an administrator in
  /// the chat
  final double premiumMemberPercentage;

  static const String constructor = 'chatBoostStatus';

  static ChatBoostStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostStatus(
      isBoosted: json['is_boosted'] as bool,
      level: json['level'] as int,
      boostCount: json['boost_count'] as int,
      currentLevelBoostCount: json['current_level_boost_count'] as int,
      nextLevelBoostCount: json['next_level_boost_count'] as int,
      premiumMemberCount: json['premium_member_count'] as int,
      premiumMemberPercentage:
          (json['premium_member_percentage'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_boosted': isBoosted,
        'level': level,
        'boost_count': boostCount,
        'current_level_boost_count': currentLevelBoostCount,
        'next_level_boost_count': nextLevelBoostCount,
        'premium_member_count': premiumMemberCount,
        'premium_member_percentage': premiumMemberPercentage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
