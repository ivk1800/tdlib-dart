import '../tdapi.dart';

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
}
