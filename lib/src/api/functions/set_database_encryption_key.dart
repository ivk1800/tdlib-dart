import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the database encryption key. Usually the encryption key is never
/// changed and is stored in some OS keychain
/// Returns [Ok]
class SetDatabaseEncryptionKey extends TdFunction {
  SetDatabaseEncryptionKey({required this.newEncryptionKey});

  /// [newEncryptionKey] New encryption key
  final String newEncryptionKey;

  static const String CONSTRUCTOR = 'setDatabaseEncryptionKey';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'new_encryption_key': this.newEncryptionKey, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
