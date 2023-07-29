import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The story can be viewed by all close friends
@immutable
class StoryPrivacySettingsCloseFriends extends StoryPrivacySettings {
  const StoryPrivacySettingsCloseFriends();

  static const String constructor = 'storyPrivacySettingsCloseFriends';

  static StoryPrivacySettingsCloseFriends? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryPrivacySettingsCloseFriends();
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
