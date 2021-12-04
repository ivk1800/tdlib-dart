import '../tdapi.dart';

/// The link is a link to a language pack. Call getLanguagePackInfo with the
/// given language pack identifier to process the link
class InternalLinkTypeLanguagePack extends InternalLinkType {
  InternalLinkTypeLanguagePack({required this.languagePackId});

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  static const String CONSTRUCTOR = 'internalLinkTypeLanguagePack';

  static InternalLinkTypeLanguagePack? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeLanguagePack(
        languagePackId: json['language_pack_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'language_pack_id': this.languagePackId, '@type': CONSTRUCTOR};
}
