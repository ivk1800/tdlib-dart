import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
