import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with paid media
@immutable
class PushMessageContentPaidMedia extends PushMessageContent {
  const PushMessageContentPaidMedia({
    required this.starCount,
    required this.isPinned,
  });

  /// [starCount] Number of Telegram Stars needed to buy access to the media in
  /// the message; 0 for pinned message
  final int starCount;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentPaidMedia';

  static PushMessageContentPaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPaidMedia(
      starCount: json['star_count'] as int,
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
