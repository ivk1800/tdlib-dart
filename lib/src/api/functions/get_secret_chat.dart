import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a secret chat by its identifier. This is an
/// offline request
/// Returns [SecretChat]
@immutable
class GetSecretChat extends TdFunction {
  const GetSecretChat({
    required this.secretChatId,
  });

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  static const String constructor = 'getSecretChat';

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
