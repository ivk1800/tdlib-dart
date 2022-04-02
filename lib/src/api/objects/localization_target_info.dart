import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about the current localization target
class LocalizationTargetInfo extends TdObject {
  LocalizationTargetInfo({required this.languagePacks});

  /// [languagePacks] List of available language packs for this application
  final List<LanguagePackInfo> languagePacks;

  static const String CONSTRUCTOR = 'localizationTargetInfo';

  static LocalizationTargetInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LocalizationTargetInfo(
        languagePacks: List<LanguagePackInfo>.from(
            (json['language_packs'] ?? [])
                .map((item) => LanguagePackInfo.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_packs': languagePacks.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
