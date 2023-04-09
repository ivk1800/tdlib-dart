import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some language pack strings have been updated
@immutable
class UpdateLanguagePackStrings extends Update {
  const UpdateLanguagePackStrings({
    required this.localizationTarget,
    required this.languagePackId,
    required this.strings,
  });

  /// [localizationTarget] Localization target to which the language pack
  /// belongs
  final String localizationTarget;

  /// [languagePackId] Identifier of the updated language pack
  final String languagePackId;

  /// [strings] List of changed language pack strings; empty if all strings have
  /// changed
  final List<LanguagePackString> strings;

  static const String constructor = 'updateLanguagePackStrings';

  static UpdateLanguagePackStrings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateLanguagePackStrings(
      localizationTarget: json['localization_target'],
      languagePackId: json['language_pack_id'],
      strings: List<LanguagePackString>.from((json['strings'] ?? [])
          .map((item) => LanguagePackString.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'localization_target': localizationTarget,
        'language_pack_id': languagePackId,
        'strings': strings.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
