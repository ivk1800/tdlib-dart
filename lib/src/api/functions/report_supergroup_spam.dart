import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports messages in a supergroup as spam; requires administrator rights in
/// the supergroup
/// Returns [Ok]
@immutable
class ReportSupergroupSpam extends TdFunction {
  const ReportSupergroupSpam({
    required this.supergroupId,
    required this.messageIds,
  });

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  /// [messageIds] Identifiers of messages to report
  final List<int> messageIds;

  static const String constructor = 'reportSupergroupSpam';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
