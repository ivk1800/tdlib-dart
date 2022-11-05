import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes order of active usernames of the current user
/// Returns [Ok]
@immutable
class ReorderActiveUsernames extends TdFunction {
  const ReorderActiveUsernames({
    required this.usernames,
  });

  /// [usernames] The new order of active usernames. All currently active
  /// usernames must be specified
  final List<String> usernames;

  static const String constructor = 'reorderActiveUsernames';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'usernames': usernames.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
