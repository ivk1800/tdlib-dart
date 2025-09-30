import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether the supergroup is a forum; requires owner privileges in
/// the supergroup. Discussion supergroups can't be converted to forums
/// Returns [Ok]
@immutable
class ToggleSupergroupIsForum extends TdFunction {
  const ToggleSupergroupIsForum({
    required this.supergroupId,
    required this.isForum,
    required this.hasForumTabs,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [isForum] New value of is_forum
  final bool isForum;

  /// [hasForumTabs] New value of has_forum_tabs; ignored if is_forum is false
  final bool hasForumTabs;

  static const String constructor = 'toggleSupergroupIsForum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'supergroup_id': supergroupId,
    'is_forum': isForum,
    'has_forum_tabs': hasForumTabs,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
