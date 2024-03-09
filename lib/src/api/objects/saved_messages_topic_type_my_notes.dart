import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Topic containing messages sent by the current user of forwarded from an
/// unknown chat
@immutable
class SavedMessagesTopicTypeMyNotes extends SavedMessagesTopicType {
  const SavedMessagesTopicTypeMyNotes();

  static const String constructor = 'savedMessagesTopicTypeMyNotes';

  static SavedMessagesTopicTypeMyNotes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SavedMessagesTopicTypeMyNotes();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
