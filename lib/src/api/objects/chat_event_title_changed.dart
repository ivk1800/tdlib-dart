import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat title was changed
@immutable
class ChatEventTitleChanged extends ChatEventAction {
  const ChatEventTitleChanged({
    required this.oldTitle,
    required this.newTitle,
  });

  /// [oldTitle] Previous chat title
  final String oldTitle;

  /// [newTitle] New chat title
  final String newTitle;

  static const String constructor = 'chatEventTitleChanged';

  static ChatEventTitleChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventTitleChanged(
      oldTitle: json['old_title'] as String,
      newTitle: json['new_title'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_title': oldTitle,
        'new_title': newTitle,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
