import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns a user that can be contacted to get support
/// Returns [User]
class GetSupportUser extends TdFunction {
  GetSupportUser();

  static const String CONSTRUCTOR = 'getSupportUser';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
