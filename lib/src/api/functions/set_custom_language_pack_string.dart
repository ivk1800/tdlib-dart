import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds, edits or deletes a string in a custom local language pack. Can be
/// called before authorization
/// Returns [Ok]
@immutable
class SetCustomLanguagePackString extends TdFunction {
  const SetCustomLanguagePackString({
    required this.languagePackId,
    required this.newString,
  });

  /// [languagePackId] Identifier of a previously added custom local language
  /// pack in the current localization target
  final String languagePackId;

  /// [newString] New language pack string
  final LanguagePackString newString;

  static const String constructor = 'setCustomLanguagePackString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_pack_id': languagePackId,
        'new_string': newString.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
