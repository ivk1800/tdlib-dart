import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes default background for chats
/// Returns [Ok]
@immutable
class DeleteDefaultBackground extends TdFunction {
  const DeleteDefaultBackground({
    required this.forDarkTheme,
  });

  /// [forDarkTheme] Pass true if the background is deleted for a dark theme
  final bool forDarkTheme;

  static const String constructor = 'deleteDefaultBackground';

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
