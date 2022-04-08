import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a language pack. Returned language pack
/// identifier may be different from a provided one. Can be called before
/// authorization
/// Returns [LanguagePackInfo]
@immutable
class GetLanguagePackInfo extends TdFunction {
  const GetLanguagePackInfo({
    required this.languagePackId,
  });

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  static const String constructor = 'getLanguagePackInfo';

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
