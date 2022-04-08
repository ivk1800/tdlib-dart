import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A newly created basic group
@immutable
class MessageBasicGroupChatCreate extends MessageContent {
  const MessageBasicGroupChatCreate({
    required this.title,
    required this.memberUserIds,
  });

  /// [title] Title of the basic group
  final String title;

  /// [memberUserIds] User identifiers of members in the basic group
  final List<int> memberUserIds;

  static const String constructor = 'messageBasicGroupChatCreate';

  static MessageBasicGroupChatCreate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageBasicGroupChatCreate(
      title: json['title'],
      memberUserIds: List<int>.from(
          (json['member_user_ids'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'member_user_ids': memberUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
