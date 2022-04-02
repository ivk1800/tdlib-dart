import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the background selected by the user; adds background to the list
/// of installed backgrounds
/// Returns [Background]
class SetBackground extends TdFunction {
  SetBackground({this.background, this.type, required this.forDarkTheme});

  /// [background] The input background to use; pass null to create a new filled
  /// backgrounds or to remove the current background
  final InputBackground? background;

  /// [type] Background type; pass null to use the default type of the remote
  /// background or to remove the current background
  final BackgroundType? type;

  /// [forDarkTheme] True, if the background is chosen for dark theme
  final bool forDarkTheme;

  static const String CONSTRUCTOR = 'setBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'background': this.background?.toJson(),
        'type': this.type?.toJson(),
        'for_dark_theme': this.forDarkTheme,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
