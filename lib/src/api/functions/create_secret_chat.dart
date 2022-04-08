import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an existing chat corresponding to a known secret chat
/// Returns [Chat]
@immutable
class CreateSecretChat extends TdFunction {
  const CreateSecretChat({
    required this.secretChatId,
  });

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  static const String constructor = 'createSecretChat';

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
