import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a supergroup or a channel by its identifier.
/// This is an offline request if the current user is not a bot
/// Returns [Supergroup]
@immutable
class GetSupergroup extends TdFunction {
  const GetSupergroup({
    required this.supergroupId,
  });

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  static const String constructor = 'getSupergroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
