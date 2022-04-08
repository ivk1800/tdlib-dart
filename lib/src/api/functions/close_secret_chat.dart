import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Closes a secret chat, effectively transferring its state to
/// secretChatStateClosed
/// Returns [Ok]
@immutable
class CloseSecretChat extends TdFunction {
  const CloseSecretChat({
    required this.secretChatId,
  });

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  static const String constructor = 'closeSecretChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'secret_chat_id': secretChatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
