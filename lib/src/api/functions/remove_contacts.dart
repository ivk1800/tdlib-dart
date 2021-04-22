import '../tdapi.dart';

/// Removes users from the contact list
/// Returns [Ok]
class RemoveContacts extends TdFunction {
  RemoveContacts({required this.userIds});

  /// [userIds] Identifiers of users to be deleted
  final List<int> userIds;

  static const String CONSTRUCTOR = 'removeContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_ids': userIds.map((item) => item).toList(), '@type': CONSTRUCTOR};
}
