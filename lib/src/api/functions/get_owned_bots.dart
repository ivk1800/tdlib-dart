import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of bots owned by the current user
/// Returns [Users]
@immutable
class GetOwnedBots extends TdFunction {
  const GetOwnedBots();

  static const String constructor = 'getOwnedBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
