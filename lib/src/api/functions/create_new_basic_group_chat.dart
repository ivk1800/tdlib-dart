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
  });

  /// [userIds] Identifiers of users to be added to the basic group
  final List<int> userIds;

  /// [title] Title of the new basic group; 1-128 characters
  final String title;

  static const String constructor = 'createNewBasicGroupChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_ids': userIds.map((item) => item).toList(),
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
