import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of a Saved Messages topic
@immutable
abstract class SavedMessagesTopicType extends TdObject {
  const SavedMessagesTopicType();

  static const String constructor = 'savedMessagesTopicType';

  /// Inherited by:
  /// [SavedMessagesTopicTypeAuthorHidden]
  /// [SavedMessagesTopicTypeMyNotes]
  /// [SavedMessagesTopicTypeSavedFromChat]
  static SavedMessagesTopicType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SavedMessagesTopicTypeAuthorHidden.constructor:
        return SavedMessagesTopicTypeAuthorHidden.fromJson(json);
      case SavedMessagesTopicTypeMyNotes.constructor:
        return SavedMessagesTopicTypeMyNotes.fromJson(json);
      case SavedMessagesTopicTypeSavedFromChat.constructor:
        return SavedMessagesTopicTypeSavedFromChat.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
