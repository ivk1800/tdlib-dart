import '../tdapi.dart';

/// Returns an existing chat corresponding to a known secret chat
/// Returns [Chat]
class CreateSecretChat extends TdFunction {
  CreateSecretChat({required this.secretChatId});

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  static const String CONSTRUCTOR = 'createSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'secret_chat_id': this.secretChatId, '@type': CONSTRUCTOR};
}
