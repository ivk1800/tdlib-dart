import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Reports messages in a supergroup as spam; requires administrator rights in
/// the supergroup
/// Returns [Ok]
class ReportSupergroupSpam extends TdFunction {
  ReportSupergroupSpam({required this.supergroupId, required this.messageIds});

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  /// [messageIds] Identifiers of messages to report
  final List<int> messageIds;

  static const String CONSTRUCTOR = 'reportSupergroupSpam';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
