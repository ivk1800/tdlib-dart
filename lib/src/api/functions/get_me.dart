import '../tdapi.dart';

/// Returns the current user
/// Returns [User]
class GetMe extends TdFunction {
  GetMe();

  static const String CONSTRUCTOR = 'getMe';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
