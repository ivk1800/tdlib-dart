import '../tdapi.dart';

/// Returns a user that can be contacted to get support
/// Returns [User]
class GetSupportUser extends TdFunction {
  GetSupportUser();

  static const String CONSTRUCTOR = 'getSupportUser';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
