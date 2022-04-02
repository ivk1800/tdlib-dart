import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// File generation is no longer needed
class UpdateFileGenerationStop extends Update {
  UpdateFileGenerationStop({required this.generationId});

  /// [generationId] Unique identifier for the generation process
  final int generationId;

  static const String CONSTRUCTOR = 'updateFileGenerationStop';

  static UpdateFileGenerationStop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileGenerationStop(
        generationId: int.tryParse(json['generation_id']) ?? 0);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'generation_id': this.generationId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
