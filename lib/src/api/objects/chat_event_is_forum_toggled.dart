import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The is_forum setting of a channel was toggled
@immutable
class ChatEventIsForumToggled extends ChatEventAction {
  const ChatEventIsForumToggled({
    required this.isForum,
  });

  /// [isForum] New value of is_forum
  final bool isForum;

  static const String constructor = 'chatEventIsForumToggled';

  static ChatEventIsForumToggled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventIsForumToggled(
      isForum: json['is_forum'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_forum': isForum,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
