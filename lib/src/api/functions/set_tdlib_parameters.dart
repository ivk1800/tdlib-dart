import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the parameters for TDLib initialization. Works only when the current
/// authorization state is authorizationStateWaitTdlibParameters
/// Returns [Ok]
@immutable
class SetTdlibParameters extends TdFunction {
  const SetTdlibParameters({
    required this.parameters,
  });

  /// [parameters] Parameters for TDLib initialization
  final TdlibParameters parameters;

  static const String constructor = 'setTdlibParameters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'parameters': parameters.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
