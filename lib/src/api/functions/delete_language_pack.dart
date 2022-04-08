import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes all information about a language pack in the current localization
/// target. The language pack which is currently in use (including base
/// language pack) or is being synchronized can't be deleted. Can be called
/// before authorization
/// Returns [Ok]
@immutable
class DeleteLanguagePack extends TdFunction {
  const DeleteLanguagePack({
    required this.languagePackId,
  });

  /// [languagePackId] Identifier of the language pack to delete
  final String languagePackId;

  static const String constructor = 'deleteLanguagePack';

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
