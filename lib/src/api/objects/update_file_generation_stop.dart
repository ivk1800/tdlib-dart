import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// File generation is no longer needed
@immutable
class UpdateFileGenerationStop extends Update {
  const UpdateFileGenerationStop({
    required this.generationId,
  });

  /// [generationId] Unique identifier for the generation process
  final int generationId;

  static const String constructor = 'updateFileGenerationStop';

  static UpdateFileGenerationStop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileGenerationStop(
      generationId: int.tryParse(json['generation_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'generation_id': generationId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
