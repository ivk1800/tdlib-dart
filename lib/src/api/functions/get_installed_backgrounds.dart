import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns backgrounds installed by the user
/// Returns [Backgrounds]
@immutable
class GetInstalledBackgrounds extends TdFunction {
  const GetInstalledBackgrounds({
    required this.forDarkTheme,
  });

  /// [forDarkTheme] Pass true to order returned backgrounds for a dark theme
  final bool forDarkTheme;

  static const String constructor = 'getInstalledBackgrounds';

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
