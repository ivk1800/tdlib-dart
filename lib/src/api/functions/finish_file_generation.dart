import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Finishes the file generation
/// Returns [Ok]
class FinishFileGeneration extends TdFunction {
  FinishFileGeneration({required this.generationId, this.error});

  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [error] If passed, the file generation has failed and must be terminated;
  /// pass null if the file generation succeeded
  final TdError? error;

  static const String CONSTRUCTOR = 'finishFileGeneration';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'generation_id': this.generationId,
        'error': this.error?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
