import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A mobile roaming network
@immutable
class NetworkTypeMobileRoaming extends NetworkType {
  const NetworkTypeMobileRoaming();

  static const String constructor = 'networkTypeMobileRoaming';

  static NetworkTypeMobileRoaming? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeMobileRoaming();
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
