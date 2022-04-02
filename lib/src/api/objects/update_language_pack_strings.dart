import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Some language pack strings have been updated
class UpdateLanguagePackStrings extends Update {
  UpdateLanguagePackStrings(
      {required this.localizationTarget,
      required this.languagePackId,
      required this.strings});

  /// [localizationTarget] Localization target to which the language pack
  /// belongs
  final String localizationTarget;

  /// [languagePackId] Identifier of the updated language pack
  final String languagePackId;

  /// [strings] List of changed language pack strings
  final List<LanguagePackString> strings;

  static const String CONSTRUCTOR = 'updateLanguagePackStrings';

  static UpdateLanguagePackStrings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateLanguagePackStrings(
        localizationTarget: json['localization_target'],
        languagePackId: json['language_pack_id'],
        strings: List<LanguagePackString>.from((json['strings'] ?? [])
            .map((item) => LanguagePackString.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'localization_target': this.localizationTarget,
        'language_pack_id': this.languagePackId,
        'strings': strings.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
