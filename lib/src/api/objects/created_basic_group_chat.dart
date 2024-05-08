import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a newly created basic group chat
@immutable
class CreatedBasicGroupChat extends TdObject {
  const CreatedBasicGroupChat({
    required this.chatId,
    required this.failedToAddMembers,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [failedToAddMembers] Information about failed to add members
  final FailedToAddMembers failedToAddMembers;

  static const String constructor = 'createdBasicGroupChat';

  static CreatedBasicGroupChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CreatedBasicGroupChat(
      chatId: json['chat_id'] as int,
      failedToAddMembers: FailedToAddMembers.fromJson(
          json['failed_to_add_members'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'failed_to_add_members': failedToAddMembers.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
