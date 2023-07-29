import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns viewers of a recent outgoing story. The method can be called if
/// story.can_get_viewers == true. The views are returned in a reverse
/// chronological order (i.e., in order of decreasing view_date) For optimal
/// performance, the number of returned stories is chosen by TDLib
/// Returns [MessageViewers]
@immutable
class GetStoryViewers extends TdFunction {
  const GetStoryViewers({
    required this.storyId,
    this.offsetViewer,
    required this.limit,
  });

  /// [storyId] Story identifier
  final int storyId;

  /// [offsetViewer] A viewer from which to return next viewers; pass null to
  /// get results from the beginning
  final MessageViewer? offsetViewer;

  /// [limit] The maximum number of story viewers to return For optimal
  /// performance, the number of returned stories is chosen by TDLib and can be
  /// smaller than the specified limit
  final int limit;

  static const String constructor = 'getStoryViewers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_id': storyId,
        'offset_viewer': offsetViewer?.toJson(),
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
