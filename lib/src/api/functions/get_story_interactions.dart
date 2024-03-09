import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns interactions with a story. The method can be called only for
/// stories posted on behalf of the current user
/// Returns [StoryInteractions]
@immutable
class GetStoryInteractions extends TdFunction {
  const GetStoryInteractions({
    required this.storyId,
    required this.query,
    required this.onlyContacts,
    required this.preferForwards,
    required this.preferWithReaction,
    required this.offset,
    required this.limit,
  });

  /// [storyId] Story identifier
  final int storyId;

  /// [query] Query to search for in names, usernames and titles; may be empty
  /// to get all relevant interactions
  final String query;

  /// [onlyContacts] Pass true to get only interactions by contacts; pass false
  /// to get all relevant interactions
  final bool onlyContacts;

  /// [preferForwards] Pass true to get forwards and reposts first, then
  /// reactions, then other views; pass false to get interactions sorted just by
  /// interaction date
  final bool preferForwards;

  /// [preferWithReaction] Pass true to get interactions with reaction first;
  /// pass false to get interactions sorted just by interaction date. Ignored if
  /// prefer_forwards == true
  final bool preferWithReaction;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of story interactions to return
  final int limit;

  static const String constructor = 'getStoryInteractions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_id': storyId,
        'query': query,
        'only_contacts': onlyContacts,
        'prefer_forwards': preferForwards,
        'prefer_with_reaction': preferWithReaction,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
