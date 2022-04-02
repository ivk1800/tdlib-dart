import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A background from a local file
class InputBackgroundLocal extends InputBackground {
  InputBackgroundLocal({required this.background});

  /// [background] Background file to use. Only inputFileLocal and
  /// inputFileGenerated are supported. The file must be in JPEG format for
  /// wallpapers and in PNG format for patterns
  final InputFile background;

  static const String CONSTRUCTOR = 'inputBackgroundLocal';

  static InputBackgroundLocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBackgroundLocal(
        background: InputFile.fromJson(json['background'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'background': this.background.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
