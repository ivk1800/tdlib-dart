import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A regular user
@immutable
class UserTypeRegular extends UserType {
  const UserTypeRegular();

  static const String constructor = 'userTypeRegular';

  static UserTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeRegular();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
