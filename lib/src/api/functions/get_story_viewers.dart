import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns viewers of a story. The method can be called if
/// story.can_get_viewers == true
/// Returns [StoryViewers]
@immutable
class GetStoryViewers extends TdFunction {
  const GetStoryViewers({
    required this.storyId,
    required this.query,
    required this.onlyContacts,
    required this.preferWithReaction,
    required this.offset,
    required this.limit,
  });

  /// [storyId] Story identifier
  final int storyId;

  /// [query] Query to search for in names and usernames of the viewers; may be
  /// empty to get all relevant viewers
  final String query;

  /// [onlyContacts] Pass true to get only contacts; pass false to get all
  /// relevant viewers
  final bool onlyContacts;

  /// [preferWithReaction] Pass true to get viewers with reaction first; pass
  /// false to get viewers sorted just by view_date
  final bool preferWithReaction;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of story viewers to return
  final int limit;

  static const String constructor = 'getStoryViewers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_id': storyId,
        'query': query,
        'only_contacts': onlyContacts,
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
