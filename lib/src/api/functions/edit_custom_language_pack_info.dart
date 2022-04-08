import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits information about a custom local language pack in the current
/// localization target. Can be called before authorization
/// Returns [Ok]
@immutable
class EditCustomLanguagePackInfo extends TdFunction {
  const EditCustomLanguagePackInfo({
    required this.info,
  });

  /// [info] New information about the custom local language pack
  final LanguagePackInfo info;

  static const String constructor = 'editCustomLanguagePackInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'info': info.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
