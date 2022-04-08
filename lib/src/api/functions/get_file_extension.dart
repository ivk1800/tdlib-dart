import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the extension of a file, guessed by its MIME type. Returns an
/// empty string on failure. Can be called synchronously
/// Returns [Text]
@immutable
class GetFileExtension extends TdFunction {
  const GetFileExtension({
    required this.mimeType,
  });

  /// [mimeType] The MIME type of the file
  final String mimeType;

  static const String constructor = 'getFileExtension';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mime_type': mimeType,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
