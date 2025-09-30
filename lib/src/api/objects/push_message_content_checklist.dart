import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a checklist
@immutable
class PushMessageContentChecklist extends PushMessageContent {
  const PushMessageContentChecklist({
    required this.title,
    required this.isPinned,
  });

  /// [title] Checklist title
  final String title;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentChecklist';

  static PushMessageContentChecklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChecklist(
      title: json['title'] as String,
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
