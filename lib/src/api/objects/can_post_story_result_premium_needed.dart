import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must subscribe to Telegram Premium to be able to post stories
@immutable
class CanPostStoryResultPremiumNeeded extends CanPostStoryResult {
  const CanPostStoryResultPremiumNeeded();

  static const String constructor = 'canPostStoryResultPremiumNeeded';

  static CanPostStoryResultPremiumNeeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanPostStoryResultPremiumNeeded();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
