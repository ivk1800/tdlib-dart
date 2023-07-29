import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a list of stories
@immutable
abstract class StoryList extends TdObject {
  const StoryList();

  static const String constructor = 'storyList';

  /// Inherited by:
  /// [StoryListArchive]
  /// [StoryListMain]
  static StoryList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryListArchive.constructor:
        return StoryListArchive.fromJson(json);
      case StoryListMain.constructor:
        return StoryListMain.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
