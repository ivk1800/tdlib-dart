import '../tdapi.dart';

/// Creates a new basic group and sends a corresponding
/// messageBasicGroupChatCreate. Returns the newly created chat
/// Returns [Chat]
class CreateNewBasicGroupChat extends TdFunction {
  CreateNewBasicGroupChat({required this.userIds, required this.title});

  /// [userIds] Identifiers of users to be added to the basic group
  final List<int> userIds;

  /// [title] Title of the new basic group; 1-128 characters
  final String title;

  static const String CONSTRUCTOR = 'createNewBasicGroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_ids': userIds.map((item) => item).toList(),
        'title': this.title,
        '@type': CONSTRUCTOR
      };
}
