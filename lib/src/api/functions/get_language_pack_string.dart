import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a string stored in the local database from the specified
/// localization target and language pack by its key. Returns a 404 error if
/// the string is not found. Can be called synchronously
/// Returns [LanguagePackStringValue]
@immutable
class GetLanguagePackString extends TdFunction {
  const GetLanguagePackString({
    required this.languagePackDatabasePath,
    required this.localizationTarget,
    required this.languagePackId,
    required this.key,
  });

  /// [languagePackDatabasePath] Path to the language pack database in which
  /// strings are stored
  final String languagePackDatabasePath;

  /// [localizationTarget] Localization target to which the language pack
  /// belongs
  final String localizationTarget;

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  /// [key] Language pack key of the string to be returned
  final String key;

  static const String constructor = 'getLanguagePackString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_pack_database_path': languagePackDatabasePath,
        'localization_target': localizationTarget,
        'language_pack_id': languagePackId,
        'key': key,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
