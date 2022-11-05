import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes order of active usernames of a supergroup or channel, requires
/// owner privileges in the supergroup or channel
/// Returns [Ok]
@immutable
class ReorderSupergroupActiveUsernames extends TdFunction {
  const ReorderSupergroupActiveUsernames({
    required this.supergroupId,
    required this.usernames,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [usernames] The new order of active usernames. All currently active
  /// usernames must be specified
  final List<String> usernames;

  static const String constructor = 'reorderSupergroupActiveUsernames';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'usernames': usernames.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
