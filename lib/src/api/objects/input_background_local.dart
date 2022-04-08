import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A background from a local file
@immutable
class InputBackgroundLocal extends InputBackground {
  const InputBackgroundLocal({
    required this.background,
  });

  /// [background] Background file to use. Only inputFileLocal and
  /// inputFileGenerated are supported. The file must be in JPEG format for
  /// wallpapers and in PNG format for patterns
  final InputFile background;

  static const String constructor = 'inputBackgroundLocal';

  static InputBackgroundLocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBackgroundLocal(
      background: InputFile.fromJson(json['background'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background': background.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
