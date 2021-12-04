import '../tdapi.dart';

/// Sets the parameters for TDLib initialization. Works only when the current
/// authorization state is authorizationStateWaitTdlibParameters
/// Returns [Ok]
class SetTdlibParameters extends TdFunction {
  SetTdlibParameters({required this.parameters});

  /// [parameters] Parameters for TDLib initialization
  final TdlibParameters parameters;

  static const String CONSTRUCTOR = 'setTdlibParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'parameters': this.parameters.toJson(), '@type': CONSTRUCTOR};
}
