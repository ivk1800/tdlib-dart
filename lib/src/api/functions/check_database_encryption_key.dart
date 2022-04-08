import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks the database encryption key for correctness. Works only when the
/// current authorization state is authorizationStateWaitEncryptionKey
/// Returns [Ok]
@immutable
class CheckDatabaseEncryptionKey extends TdFunction {
  const CheckDatabaseEncryptionKey({
    required this.encryptionKey,
  });

  /// [encryptionKey] Encryption key to check or set up
  final String encryptionKey;

  static const String constructor = 'checkDatabaseEncryptionKey';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'encryption_key': encryptionKey,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
