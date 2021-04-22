import '../tdapi.dart';

/// Deletes all information about a language pack in the current localization
/// target. The language pack which is currently in use (including base
/// language pack) or is being synchronized can't be deleted. Can be called
/// before authorization
/// Returns [Ok]
class DeleteLanguagePack extends TdFunction {
  DeleteLanguagePack({required this.languagePackId});

  /// [languagePackId] Identifier of the language pack to delete
  final String languagePackId;

  static const String CONSTRUCTOR = 'deleteLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'language_pack_id': this.languagePackId, '@type': CONSTRUCTOR};
}
