import '../tdapi.dart';

/// Disables the currently enabled proxy. Can be called before authorization
/// Returns [Ok]
class DisableProxy extends TdFunction {
  DisableProxy();

  static const String CONSTRUCTOR = 'disableProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
