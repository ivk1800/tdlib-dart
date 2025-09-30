import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a story
/// Returns [Story]
@immutable
class GetStory extends TdFunction {
  const GetStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.onlyLocal,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [onlyLocal] Pass true to get only locally available information without
  /// sending network requests
  final bool onlyLocal;

  static const String constructor = 'getStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    'only_local': onlyLocal,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
