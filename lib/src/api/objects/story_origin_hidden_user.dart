import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The original story was posted by an unknown user
@immutable
class StoryOriginHiddenUser extends StoryOrigin {
  const StoryOriginHiddenUser({required this.posterName});

  /// [posterName] Name of the user or the chat that posted the story
  final String posterName;

  static const String constructor = 'storyOriginHiddenUser';

  static StoryOriginHiddenUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryOriginHiddenUser(posterName: json['poster_name'] as String);
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'poster_name': posterName,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
