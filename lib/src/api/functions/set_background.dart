import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the background selected by the user; adds background to the list
/// of installed backgrounds
/// Returns [Background]
@immutable
class SetBackground extends TdFunction {
  const SetBackground({
    this.background,
    this.type,
    required this.forDarkTheme,
  });

  /// [background] The input background to use; pass null to create a new filled
  /// backgrounds or to remove the current background
  final InputBackground? background;

  /// [type] Background type; pass null to use the default type of the remote
  /// background or to remove the current background
  final BackgroundType? type;

  /// [forDarkTheme] Pass true if the background is changed for a dark theme
  final bool forDarkTheme;

  static const String constructor = 'setBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background': background?.toJson(),
        'type': type?.toJson(),
        'for_dark_theme': forDarkTheme,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
