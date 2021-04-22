import '../tdapi.dart';

/// Finishes the file generation
/// Returns [Ok]
class FinishFileGeneration extends TdFunction {
  FinishFileGeneration({required this.generationId, required this.error});

  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [error] If set, means that file generation has failed and should be
  /// terminated
  final TdError error;

  static const String CONSTRUCTOR = 'finishFileGeneration';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'generation_id': this.generationId,
        'error': this.error.toJson(),
        '@type': CONSTRUCTOR
      };
}
