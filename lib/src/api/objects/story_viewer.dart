import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a viewer of a story
@immutable
class StoryViewer extends TdObject {
  const StoryViewer({
    required this.userId,
    required this.viewDate,
    this.blockList,
    this.chosenReactionType,
  });

  /// [userId] User identifier of the viewer
  final int userId;

  /// [viewDate] Approximate point in time (Unix timestamp) when the story was
  /// viewed
  final int viewDate;

  /// [blockList] Block list to which the user is added; may be null if none
  final BlockList? blockList;

  /// [chosenReactionType] Type of the reaction that was chosen by the user; may
  /// be null if none
  final ReactionType? chosenReactionType;

  static const String constructor = 'storyViewer';

  static StoryViewer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryViewer(
      userId: json['user_id'] as int,
      viewDate: json['view_date'] as int,
      blockList:
          BlockList.fromJson(json['block_list'] as Map<String, dynamic>?),
      chosenReactionType: ReactionType.fromJson(
          json['chosen_reaction_type'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'view_date': viewDate,
        'block_list': blockList?.toJson(),
        'chosen_reaction_type': chosenReactionType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
