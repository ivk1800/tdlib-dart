import '../tdapi.dart';

/// Returns all user contacts
/// Returns [Users]
class GetContacts extends TdFunction {
  GetContacts();

  static const String CONSTRUCTOR = 'getContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
