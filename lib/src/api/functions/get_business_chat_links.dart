import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns business chat links created for the current account
/// Returns [BusinessChatLinks]
@immutable
class GetBusinessChatLinks extends TdFunction {
  const GetBusinessChatLinks();

  static const String constructor = 'getBusinessChatLinks';

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
