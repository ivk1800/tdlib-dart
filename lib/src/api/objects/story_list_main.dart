import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of stories, shown in the main chat list and folder chat lists
@immutable
class StoryListMain extends StoryList {
  const StoryListMain();

  static const String constructor = 'storyListMain';

  static StoryListMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryListMain();
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
