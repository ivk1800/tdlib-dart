import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Converts a themeParameters object to corresponding JSON-serialized string.
/// Can be called synchronously
/// Returns [Text]
@immutable
class GetThemeParametersJsonString extends TdFunction {
  const GetThemeParametersJsonString({
    required this.theme,
  });

  /// [theme] Theme parameters to convert to JSON
  final ThemeParameters theme;

  static const String constructor = 'getThemeParametersJsonString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'theme': theme.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
