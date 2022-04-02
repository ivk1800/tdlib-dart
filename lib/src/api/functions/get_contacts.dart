import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns all user contacts
/// Returns [Users]
class GetContacts extends TdFunction {
  GetContacts();

  static const String CONSTRUCTOR = 'getContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
