import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The file generation process needs to be started by the application
@immutable
class UpdateFileGenerationStart extends Update {
  const UpdateFileGenerationStart({
    required this.generationId,
    required this.originalPath,
    required this.destinationPath,
    required this.conversion,
  });

  /// [generationId] Unique identifier for the generation process
  final int generationId;

  /// [originalPath] The path to a file from which a new file is generated; may
  /// be empty
  final String originalPath;

  /// [destinationPath] The path to a file that must be created and where the
  /// new file is generated
  final String destinationPath;

  /// [conversion] String specifying the conversion applied to the original
  /// file. If conversion is "#url#" than original_path contains an HTTP/HTTPS
  /// URL of a file, which must be downloaded by the application
  final String conversion;

  static const String constructor = 'updateFileGenerationStart';

  static UpdateFileGenerationStart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileGenerationStart(
      generationId: int.tryParse(json['generation_id']) ?? 0,
      originalPath: json['original_path'] as String,
      destinationPath: json['destination_path'] as String,
      conversion: json['conversion'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'generation_id': generationId,
        'original_path': originalPath,
        'destination_path': destinationPath,
        'conversion': conversion,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
