import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns default message auto-delete time setting for new chats
/// Returns [MessageAutoDeleteTime]
@immutable
class GetDefaultMessageAutoDeleteTime extends TdFunction {
  const GetDefaultMessageAutoDeleteTime();

  static const String constructor = 'getDefaultMessageAutoDeleteTime';

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
