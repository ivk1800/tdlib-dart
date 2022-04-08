import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Points to a file
@immutable
abstract class InputFile extends TdObject {
  const InputFile();

  static const String constructor = 'inputFile';

  /// Inherited by:
  /// [InputFileId]
  /// [InputFileRemote]
  /// [InputFileLocal]
  /// [InputFileGenerated]
  static InputFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputFileId.constructor:
        return InputFileId.fromJson(json);
      case InputFileRemote.constructor:
        return InputFileRemote.fromJson(json);
      case InputFileLocal.constructor:
        return InputFileLocal.fromJson(json);
      case InputFileGenerated.constructor:
        return InputFileGenerated.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
