import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a custom server language pack to the list of installed language packs
/// in current localization target. Can be called before authorization
/// Returns [Ok]
@immutable
class AddCustomServerLanguagePack extends TdFunction {
  const AddCustomServerLanguagePack({
    required this.languagePackId,
  });

  /// [languagePackId] Identifier of a language pack to be added; may be
  /// different from a name that is used in an "https://t.me/setlanguage/" link
  final String languagePackId;

  static const String constructor = 'addCustomServerLanguagePack';

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
