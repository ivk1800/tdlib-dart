import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The monthly limit for the number of posted stories exceeded. The user
/// needs to buy Telegram Premium or wait specified time
@immutable
class CanPostStoryResultMonthlyLimitExceeded extends CanPostStoryResult {
  const CanPostStoryResultMonthlyLimitExceeded({required this.retryAfter});

  /// [retryAfter] Time left before the user can post the next story
  final int retryAfter;

  static const String constructor = 'canPostStoryResultMonthlyLimitExceeded';

  static CanPostStoryResultMonthlyLimitExceeded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CanPostStoryResultMonthlyLimitExceeded(
      retryAfter: json['retry_after'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'retry_after': retryAfter,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
