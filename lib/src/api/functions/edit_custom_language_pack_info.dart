import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Edits information about a custom local language pack in the current
/// localization target. Can be called before authorization
/// Returns [Ok]
class EditCustomLanguagePackInfo extends TdFunction {
  EditCustomLanguagePackInfo({required this.info});

  /// [info] New information about the custom local language pack
  final LanguagePackInfo info;

  static const String CONSTRUCTOR = 'editCustomLanguagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'info': this.info.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
