import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The limit for the number of active stories exceeded. The user can buy
/// Telegram Premium, delete an active story, or wait for the oldest story to
/// expire
@immutable
class CanSendStoryResultActiveStoryLimitExceeded extends CanSendStoryResult {
  const CanSendStoryResultActiveStoryLimitExceeded();

  static const String constructor =
      'canSendStoryResultActiveStoryLimitExceeded';

  static CanSendStoryResultActiveStoryLimitExceeded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanSendStoryResultActiveStoryLimitExceeded();
  }

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
