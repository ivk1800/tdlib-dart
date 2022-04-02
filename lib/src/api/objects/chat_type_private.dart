import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An ordinary chat with a user
class ChatTypePrivate extends ChatType {
  ChatTypePrivate({required this.userId});

  /// [userId] User identifier
  final int userId;

  static const String CONSTRUCTOR = 'chatTypePrivate';

  static ChatTypePrivate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypePrivate(userId: json['user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
