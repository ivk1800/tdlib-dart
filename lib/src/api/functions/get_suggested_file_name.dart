import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns suggested name for saving a file in a given directory
/// Returns [Text]
class GetSuggestedFileName extends TdFunction {
  GetSuggestedFileName({required this.fileId, required this.directory});

  /// [fileId] Identifier of the file
  final int fileId;

  /// [directory] Directory in which the file is supposed to be saved
  final String directory;

  static const String CONSTRUCTOR = 'getSuggestedFileName';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file_id': this.fileId,
        'directory': this.directory,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
