import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes messages on behalf of a business account; for bots only
/// Returns [Ok]
@immutable
class DeleteBusinessMessages extends TdFunction {
  const DeleteBusinessMessages({
    required this.businessConnectionId,
    required this.messageIds,
  });

  /// [businessConnectionId] Unique identifier of business connection through
  /// which the messages were received
  final String businessConnectionId;

  /// [messageIds] Identifier of the messages
  final List<int> messageIds;

  static const String constructor = 'deleteBusinessMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'message_ids': messageIds.map((item) => item).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
