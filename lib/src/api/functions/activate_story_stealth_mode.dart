import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Activates stealth mode for stories, which hides all views of stories from
/// the current user in the last "story_stealth_mode_past_period" seconds and
/// for the next "story_stealth_mode_future_period" seconds; for Telegram
/// Premium users only
/// Returns [Ok]
@immutable
class ActivateStoryStealthMode extends TdFunction {
  const ActivateStoryStealthMode();

  static const String constructor = 'activateStoryStealthMode';

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
