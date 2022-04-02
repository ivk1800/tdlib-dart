import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A newly created basic group
class MessageBasicGroupChatCreate extends MessageContent {
  MessageBasicGroupChatCreate(
      {required this.title, required this.memberUserIds});

  /// [title] Title of the basic group
  final String title;

  /// [memberUserIds] User identifiers of members in the basic group
  final List<int> memberUserIds;

  static const String CONSTRUCTOR = 'messageBasicGroupChatCreate';

  static MessageBasicGroupChatCreate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageBasicGroupChatCreate(
        title: json['title'],
        memberUserIds: List<int>.from(
            (json['member_user_ids'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'title': this.title,
        'member_user_ids': memberUserIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
