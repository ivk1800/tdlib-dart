import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Fetches the latest versions of all strings from a language pack in the
/// current localization target from the server. This method doesn't need to
/// be called explicitly for the current used/base language packs. Can be
/// called before authorization
/// Returns [Ok]
@immutable
class SynchronizeLanguagePack extends TdFunction {
  const SynchronizeLanguagePack({
    required this.languagePackId,
  });

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  static const String constructor = 'synchronizeLanguagePack';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_pack_id': languagePackId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
