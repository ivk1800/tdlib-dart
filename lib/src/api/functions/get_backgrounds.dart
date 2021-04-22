import '../tdapi.dart';

/// Returns backgrounds installed by the user
/// Returns [Backgrounds]
class GetBackgrounds extends TdFunction {
  GetBackgrounds({required this.forDarkTheme});

  /// [forDarkTheme] True, if the backgrounds must be ordered for dark theme
  final bool forDarkTheme;

  static const String CONSTRUCTOR = 'getBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'for_dark_theme': this.forDarkTheme, '@type': CONSTRUCTOR};
}
