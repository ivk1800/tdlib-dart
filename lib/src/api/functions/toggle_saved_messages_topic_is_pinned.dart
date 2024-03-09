import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the pinned state of a Saved Messages topic. There can be up to
/// getOption("pinned_saved_messages_topic_count_max") pinned topics. The
/// limit can be increased with Telegram Premium
/// Returns [Ok]
@immutable
class ToggleSavedMessagesTopicIsPinned extends TdFunction {
  const ToggleSavedMessagesTopicIsPinned({
    required this.savedMessagesTopicId,
    required this.isPinned,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic to pin or unpin
  final int savedMessagesTopicId;

  /// [isPinned] Pass true to pin the topic; pass false to unpin it
  final bool isPinned;

  static const String constructor = 'toggleSavedMessagesTopicIsPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_id': savedMessagesTopicId,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
