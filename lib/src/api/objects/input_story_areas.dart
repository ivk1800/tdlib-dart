import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of story areas to be added
@immutable
class InputStoryAreas extends TdObject {
  const InputStoryAreas({
    required this.areas,
  });

  /// [areas] List of input story areas. Currently, a story can have up to 10
  /// inputStoryAreaTypeLocation, inputStoryAreaTypeFoundVenue, and
  /// inputStoryAreaTypePreviousVenue areas, up to
  /// getOption("story_suggested_reaction_area_count_max")
  /// inputStoryAreaTypeSuggestedReaction areas, and up to 1
  /// inputStoryAreaTypeMessage area
  final List<InputStoryArea> areas;

  static const String constructor = 'inputStoryAreas';

  static InputStoryAreas? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreas(
      areas: List<InputStoryArea>.from(
          ((json['areas'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputStoryArea.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'areas': areas.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
