import '../tdapi.dart';

/// Creates a new secret chat. Returns the newly created chat
/// Returns [Chat]
class CreateNewSecretChat extends TdFunction {
  CreateNewSecretChat({required this.userId});

  /// [userId] Identifier of the target user
  final int userId;

  static const String CONSTRUCTOR = 'createNewSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR};
}
