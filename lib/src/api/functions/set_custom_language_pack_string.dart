import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Adds, edits or deletes a string in a custom local language pack. Can be
/// called before authorization
/// Returns [Ok]
class SetCustomLanguagePackString extends TdFunction {
  SetCustomLanguagePackString(
      {required this.languagePackId, required this.newString});

  /// [languagePackId] Identifier of a previously added custom local language
  /// pack in the current localization target
  final String languagePackId;

  /// [newString] New language pack string
  final LanguagePackString newString;

  static const String CONSTRUCTOR = 'setCustomLanguagePackString';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_pack_id': this.languagePackId,
        'new_string': this.newString.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
