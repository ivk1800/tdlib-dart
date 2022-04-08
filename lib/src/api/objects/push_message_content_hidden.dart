import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A general message with hidden content
@immutable
class PushMessageContentHidden extends PushMessageContent {
  const PushMessageContentHidden({
    required this.isPinned,
  });

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentHidden';

  static PushMessageContentHidden? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentHidden(
      isPinned: json['is_pinned'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
