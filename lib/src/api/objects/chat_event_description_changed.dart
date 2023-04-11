import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat description was changed
@immutable
class ChatEventDescriptionChanged extends ChatEventAction {
  const ChatEventDescriptionChanged({
    required this.oldDescription,
    required this.newDescription,
  });

  /// [oldDescription] Previous chat description
  final String oldDescription;

  /// [newDescription] New chat description
  final String newDescription;

  static const String constructor = 'chatEventDescriptionChanged';

  static ChatEventDescriptionChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventDescriptionChanged(
      oldDescription: json['old_description'] as String,
      newDescription: json['new_description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_description': oldDescription,
        'new_description': newDescription,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
