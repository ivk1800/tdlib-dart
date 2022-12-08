import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a new basic group and sends a corresponding
/// messageBasicGroupChatCreate. Returns the newly created chat
/// Returns [Chat]
@immutable
class CreateNewBasicGroupChat extends TdFunction {
  const CreateNewBasicGroupChat({
    required this.userIds,
    required this.title,
    required this.messageTtl,
  });

  /// [userIds] Identifiers of users to be added to the basic group
  final List<int> userIds;

  /// [title] Title of the new basic group; 1-128 characters
  final String title;

  /// [messageTtl] Message TTL value, in seconds; must be from 0 up to 365 *
  /// 86400 and be divisible by 86400. If 0, then messages aren't deleted
  /// automatically
  final int messageTtl;

  static const String constructor = 'createNewBasicGroupChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_ids': userIds.map((item) => item).toList(),
        'title': title,
        'message_ttl': messageTtl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
