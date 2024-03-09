import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat must be boosted first by Telegram Premium subscribers to post
/// more stories. Call getChatBoostStatus to get current boost status of the
/// chat
@immutable
class CanSendStoryResultBoostNeeded extends CanSendStoryResult {
  const CanSendStoryResultBoostNeeded();

  static const String constructor = 'canSendStoryResultBoostNeeded';

  static CanSendStoryResultBoostNeeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanSendStoryResultBoostNeeded();
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
