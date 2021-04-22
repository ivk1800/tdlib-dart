import '../tdapi.dart';

/// Returns information about the current temporary password
/// Returns [TemporaryPasswordState]
class GetTemporaryPasswordState extends TdFunction {
  GetTemporaryPasswordState();

  static const String CONSTRUCTOR = 'getTemporaryPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
