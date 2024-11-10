import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of Telegram Star subscriptions
@immutable
class StarSubscriptions extends TdObject {
  const StarSubscriptions({
    required this.starCount,
    required this.subscriptions,
    required this.requiredStarCount,
    required this.nextOffset,
  });

  /// [starCount] The amount of owned Telegram Stars
  final int starCount;

  /// [subscriptions] List of subscriptions for Telegram Stars
  final List<StarSubscription> subscriptions;

  /// [requiredStarCount] The number of Telegram Stars required to buy to extend
  /// subscriptions expiring soon
  final int requiredStarCount;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'starSubscriptions';

  static StarSubscriptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscriptions(
      starCount: json['star_count'] as int,
      subscriptions: List<StarSubscription>.from(
          ((json['subscriptions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StarSubscription.fromJson(item))
              .toList()),
      requiredStarCount: json['required_star_count'] as int,
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'subscriptions': subscriptions.map((item) => item.toJson()).toList(),
        'required_star_count': requiredStarCount,
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
