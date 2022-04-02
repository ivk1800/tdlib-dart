import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Fetches the latest versions of all strings from a language pack in the
/// current localization target from the server. This method doesn't need to
/// be called explicitly for the current used/base language packs. Can be
/// called before authorization
/// Returns [Ok]
class SynchronizeLanguagePack extends TdFunction {
  SynchronizeLanguagePack({required this.languagePackId});

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  static const String CONSTRUCTOR = 'synchronizeLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'language_pack_id': this.languagePackId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
