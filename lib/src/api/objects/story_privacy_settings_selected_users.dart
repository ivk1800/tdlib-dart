import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The story can be viewed by certain specified users
@immutable
class StoryPrivacySettingsSelectedUsers extends StoryPrivacySettings {
  const StoryPrivacySettingsSelectedUsers({
    required this.userIds,
  });

  /// [userIds] Identifiers of the users; always unknown and empty for non-owned
  /// stories
  final List<int> userIds;

  static const String constructor = 'storyPrivacySettingsSelectedUsers';

  static StoryPrivacySettingsSelectedUsers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryPrivacySettingsSelectedUsers(
      userIds: List<int>.from(
          ((json['user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_ids': userIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
