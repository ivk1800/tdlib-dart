import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes privacy settings of a previously sent story
/// Returns [Ok]
@immutable
class SetStoryPrivacySettings extends TdFunction {
  const SetStoryPrivacySettings({
    required this.storyId,
    required this.privacySettings,
  });

  /// [storyId] Identifier of the story
  final int storyId;

  /// [privacySettings] The new privacy settigs for the story
  final StoryPrivacySettings privacySettings;

  static const String constructor = 'setStoryPrivacySettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_id': storyId,
        'privacy_settings': privacySettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
