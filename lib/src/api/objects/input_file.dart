import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Points to a file
abstract class InputFile extends TdObject {
  const InputFile();

  static const String CONSTRUCTOR = 'inputFile';

  /// Inherited by:
  /// [InputFileId]
  /// [InputFileRemote]
  /// [InputFileLocal]
  /// [InputFileGenerated]
  static InputFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InputFileId.CONSTRUCTOR:
        return InputFileId.fromJson(json);
      case InputFileRemote.CONSTRUCTOR:
        return InputFileRemote.fromJson(json);
      case InputFileLocal.CONSTRUCTOR:
        return InputFileLocal.fromJson(json);
      case InputFileGenerated.CONSTRUCTOR:
        return InputFileGenerated.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
