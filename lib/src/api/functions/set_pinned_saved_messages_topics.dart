import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the order of pinned Saved Messages topics
/// Returns [Ok]
@immutable
class SetPinnedSavedMessagesTopics extends TdFunction {
  const SetPinnedSavedMessagesTopics({
    required this.savedMessagesTopicIds,
  });

  /// [savedMessagesTopicIds] Identifiers of the new pinned Saved Messages
  /// topics
  final List<int> savedMessagesTopicIds;

  static const String constructor = 'setPinnedSavedMessagesTopics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_ids':
            savedMessagesTopicIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
