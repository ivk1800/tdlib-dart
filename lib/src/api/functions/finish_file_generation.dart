import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Finishes the file generation
/// Returns [Ok]
@immutable
class FinishFileGeneration extends TdFunction {
  const FinishFileGeneration({
    required this.generationId,
    this.error,
  });

  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [error] If passed, the file generation has failed and must be terminated;
  /// pass null if the file generation succeeded
  final TdError? error;

  static const String constructor = 'finishFileGeneration';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'generation_id': generationId,
        'error': error?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
