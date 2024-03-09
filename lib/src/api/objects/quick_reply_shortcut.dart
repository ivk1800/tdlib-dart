import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a shortcut that can be used for a quick reply
@immutable
class QuickReplyShortcut extends TdObject {
  const QuickReplyShortcut({
    required this.id,
    required this.name,
    required this.firstMessage,
    required this.messageCount,
  });

  /// [id] Unique shortcut identifier
  final int id;

  /// [name] The name of the shortcut that can be used to use the shortcut
  final String name;

  /// [firstMessage] The first shortcut message
  final QuickReplyMessage firstMessage;

  /// [messageCount] The total number of messages in the shortcut
  final int messageCount;

  static const String constructor = 'quickReplyShortcut';

  static QuickReplyShortcut? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return QuickReplyShortcut(
      id: json['id'] as int,
      name: json['name'] as String,
      firstMessage: QuickReplyMessage.fromJson(
          json['first_message'] as Map<String, dynamic>?)!,
      messageCount: json['message_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'first_message': firstMessage.toJson(),
        'message_count': messageCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
