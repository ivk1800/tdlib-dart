import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The Telegram Star revenue earned by a bot or a chat has changed. If
/// Telegram Star transaction screen of the chat is opened, then
/// getStarTransactions may be called to fetch new transactions
@immutable
class UpdateStarRevenueStatus extends Update {
  const UpdateStarRevenueStatus({
    required this.ownerId,
    required this.status,
  });

  /// [ownerId] Identifier of the owner of the Telegram Stars
  final MessageSender ownerId;

  /// [status] New Telegram Star revenue status
  final StarRevenueStatus status;

  static const String constructor = 'updateStarRevenueStatus';

  static UpdateStarRevenueStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStarRevenueStatus(
      ownerId:
          MessageSender.fromJson(json['owner_id'] as Map<String, dynamic>?)!,
      status:
          StarRevenueStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'status': status.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
