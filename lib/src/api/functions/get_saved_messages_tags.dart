import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns tags used in Saved Messages or a Saved Messages topic
/// Returns [SavedMessagesTags]
@immutable
class GetSavedMessagesTags extends TdFunction {
  const GetSavedMessagesTags({
    required this.savedMessagesTopicId,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which tags will
  /// be returned; pass 0 to get all Saved Messages tags
  final int savedMessagesTopicId;

  static const String constructor = 'getSavedMessagesTags';

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
