import '../tdapi.dart';

/// Returns information about existing countries. Can be called before
/// authorization
/// Returns [Countries]
class GetCountries extends TdFunction {
  GetCountries();

  static const String CONSTRUCTOR = 'getCountries';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
