import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the current user
/// Returns [User]
class GetMe extends TdFunction {
  GetMe();

  static const String CONSTRUCTOR = 'getMe';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
