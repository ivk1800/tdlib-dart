import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Topic containing messages forwarded from a user with hidden privacy
@immutable
class SavedMessagesTopicTypeAuthorHidden extends SavedMessagesTopicType {
  const SavedMessagesTopicTypeAuthorHidden();

  static const String constructor = 'savedMessagesTopicTypeAuthorHidden';

  static SavedMessagesTopicTypeAuthorHidden? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SavedMessagesTopicTypeAuthorHidden();
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
