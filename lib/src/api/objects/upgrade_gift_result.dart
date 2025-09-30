import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains result of gift upgrading
@immutable
class UpgradeGiftResult extends TdObject {
  const UpgradeGiftResult({
    required this.gift,
    required this.receivedGiftId,
    required this.isSaved,
    required this.canBeTransferred,
    required this.transferStarCount,
    required this.nextTransferDate,
    required this.nextResaleDate,
    required this.exportDate,
  });

  /// [gift] The upgraded gift
  final UpgradedGift gift;

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user
  final String receivedGiftId;

  /// [isSaved] True, if the gift is displayed on the user's or the channel's
  /// profile page
  final bool isSaved;

  /// [canBeTransferred] True, if the gift can be transferred to another owner
  final bool canBeTransferred;

  /// [transferStarCount] Number of Telegram Stars that must be paid to transfer
  /// the upgraded gift
  final int transferStarCount;

  /// [nextTransferDate] Point in time (Unix timestamp) when the gift can be
  /// transferred to another owner; 0 if the gift can be transferred immediately
  /// or transfer isn't possible
  final int nextTransferDate;

  /// [nextResaleDate] Point in time (Unix timestamp) when the gift can be
  /// resold to another user; 0 if the gift can't be resold; only for the
  /// receiver of the gift
  final int nextResaleDate;

  /// [exportDate] Point in time (Unix timestamp) when the gift can be
  /// transferred to the TON blockchain as an NFT
  final int exportDate;

  static const String constructor = 'upgradeGiftResult';

  static UpgradeGiftResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradeGiftResult(
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      receivedGiftId: json['received_gift_id'] as String,
      isSaved: json['is_saved'] as bool,
      canBeTransferred: json['can_be_transferred'] as bool,
      transferStarCount: json['transfer_star_count'] as int,
      nextTransferDate: json['next_transfer_date'] as int,
      nextResaleDate: json['next_resale_date'] as int,
      exportDate: json['export_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift.toJson(),
    'received_gift_id': receivedGiftId,
    'is_saved': isSaved,
    'can_be_transferred': canBeTransferred,
    'transfer_star_count': transferStarCount,
    'next_transfer_date': nextTransferDate,
    'next_resale_date': nextResaleDate,
    'export_date': exportDate,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
