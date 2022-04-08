import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns backgrounds installed by the user
/// Returns [Backgrounds]
@immutable
class GetBackgrounds extends TdFunction {
  const GetBackgrounds({
    required this.forDarkTheme,
  });

  /// [forDarkTheme] True, if the backgrounds must be ordered for dark theme
  final bool forDarkTheme;

  static const String constructor = 'getBackgrounds';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'for_dark_theme': forDarkTheme,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
