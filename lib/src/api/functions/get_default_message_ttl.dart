import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns default message Time To Live setting (self-destruct timer) for new
/// chats
/// Returns [MessageTtl]
@immutable
class GetDefaultMessageTtl extends TdFunction {
  const GetDefaultMessageTtl();

  static const String constructor = 'getDefaultMessageTtl';

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
