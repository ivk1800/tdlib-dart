import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns privacy settings for message read date
/// Returns [ReadDatePrivacySettings]
@immutable
class GetReadDatePrivacySettings extends TdFunction {
  const GetReadDatePrivacySettings();

  static const String constructor = 'getReadDatePrivacySettings';

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
