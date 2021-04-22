import '../tdapi.dart';

/// The file generation process needs to be started by the application
class UpdateFileGenerationStart extends Update {
  UpdateFileGenerationStart(
      {required this.generationId,
      required this.originalPath,
      required this.destinationPath,
      required this.conversion});

  /// [generationId] Unique identifier for the generation process
  final int generationId;

  /// [originalPath] The path to a file from which a new file is generated; may
  /// be empty
  final String originalPath;

  /// [destinationPath] The path to a file that should be created and where the
  /// new file should be generated
  final String destinationPath;

  /// [conversion] String specifying the conversion applied to the original
  /// file. If conversion is "#url#" than original_path contains an HTTP/HTTPS
  /// URL of a file, which should be downloaded by the application
  final String conversion;

  static const String CONSTRUCTOR = 'updateFileGenerationStart';

  static UpdateFileGenerationStart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileGenerationStart(
        generationId: int.tryParse(json['generation_id']) ?? 0,
        originalPath: json['original_path'],
        destinationPath: json['destination_path'],
        conversion: json['conversion']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'generation_id': this.generationId,
        'original_path': this.originalPath,
        'destination_path': this.destinationPath,
        'conversion': this.conversion,
        '@type': CONSTRUCTOR
      };
}
