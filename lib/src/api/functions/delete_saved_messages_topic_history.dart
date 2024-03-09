import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes all messages in a Saved Messages topic
/// Returns [Ok]
@immutable
class DeleteSavedMessagesTopicHistory extends TdFunction {
  const DeleteSavedMessagesTopicHistory({
    required this.savedMessagesTopicId,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which messages
  /// will be deleted
  final int savedMessagesTopicId;

  static const String constructor = 'deleteSavedMessagesTopicHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_id': savedMessagesTopicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
