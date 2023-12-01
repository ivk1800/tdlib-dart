import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of available chat boost slots for the current user
/// Returns [ChatBoostSlots]
@immutable
class GetAvailableChatBoostSlots extends TdFunction {
  const GetAvailableChatBoostSlots();

  static const String constructor = 'getAvailableChatBoostSlots';

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
