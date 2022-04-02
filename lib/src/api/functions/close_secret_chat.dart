import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Closes a secret chat, effectively transferring its state to
/// secretChatStateClosed
/// Returns [Ok]
class CloseSecretChat extends TdFunction {
  CloseSecretChat({required this.secretChatId});

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  static const String CONSTRUCTOR = 'closeSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'secret_chat_id': this.secretChatId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
