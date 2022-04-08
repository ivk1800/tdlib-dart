import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the database encryption key. Usually the encryption key is never
/// changed and is stored in some OS keychain
/// Returns [Ok]
@immutable
class SetDatabaseEncryptionKey extends TdFunction {
  const SetDatabaseEncryptionKey({
    required this.newEncryptionKey,
  });

  /// [newEncryptionKey] New encryption key
  final String newEncryptionKey;

  static const String constructor = 'setDatabaseEncryptionKey';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'new_encryption_key': newEncryptionKey,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
