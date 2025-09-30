import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an upgraded gift that can be transferred to another owner or
/// transferred to the TON blockchain as an NFT
@immutable
class UpgradedGift extends TdObject {
  const UpgradedGift({
    required this.id,
    required this.title,
    required this.name,
    required this.number,
    required this.totalUpgradedCount,
    required this.maxUpgradedCount,
    this.ownerId,
    required this.ownerAddress,
    required this.ownerName,
    required this.giftAddress,
    required this.model,
    required this.symbol,
    required this.backdrop,
    this.originalDetails,
    required this.resaleStarCount,
  });

  /// [id] Unique identifier of the gift
  final int id;

  /// [title] The title of the upgraded gift
  final String title;

  /// [name] Unique name of the upgraded gift that can be used with
  /// internalLinkTypeUpgradedGift or sendResoldGift
  final String name;

  /// [number] Unique number of the upgraded gift among gifts upgraded from the
  /// same gift
  final int number;

  /// [totalUpgradedCount] Total number of gifts that were upgraded from the
  /// same gift
  final int totalUpgradedCount;

  /// [maxUpgradedCount] The maximum number of gifts that can be upgraded from
  /// the same gift
  final int maxUpgradedCount;

  /// [ownerId] Identifier of the user or the chat that owns the upgraded gift;
  /// may be null if none or unknown
  final MessageSender? ownerId;

  /// [ownerAddress] Address of the gift NFT owner in TON blockchain; may be
  /// empty if none. Append the address to
  /// getOption("ton_blockchain_explorer_url") to get a link with information
  /// about the address
  final String ownerAddress;

  /// [ownerName] Name of the owner for the case when owner identifier and
  /// address aren't known
  final String ownerName;

  /// [giftAddress] Address of the gift NFT in TON blockchain; may be empty if
  /// none. Append the address to getOption("ton_blockchain_explorer_url") to
  /// get a link with information about the address
  final String giftAddress;

  /// [model] Model of the upgraded gift
  final UpgradedGiftModel model;

  /// [symbol] Symbol of the upgraded gift
  final UpgradedGiftSymbol symbol;

  /// [backdrop] Backdrop of the upgraded gift
  final UpgradedGiftBackdrop backdrop;

  /// [originalDetails] Information about the originally sent gift; may be null
  /// if unknown
  final UpgradedGiftOriginalDetails? originalDetails;

  /// [resaleStarCount] Number of Telegram Stars that must be paid to buy the
  /// gift and send it to someone else; 0 if resale isn't possible
  final int resaleStarCount;

  static const String constructor = 'upgradedGift';

  static UpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGift(
      id: int.tryParse(json['id']) ?? 0,
      title: json['title'] as String,
      name: json['name'] as String,
      number: json['number'] as int,
      totalUpgradedCount: json['total_upgraded_count'] as int,
      maxUpgradedCount: json['max_upgraded_count'] as int,
      ownerId: MessageSender.fromJson(
        json['owner_id'] as Map<String, dynamic>?,
      ),
      ownerAddress: json['owner_address'] as String,
      ownerName: json['owner_name'] as String,
      giftAddress: json['gift_address'] as String,
      model: UpgradedGiftModel.fromJson(
        json['model'] as Map<String, dynamic>?,
      )!,
      symbol: UpgradedGiftSymbol.fromJson(
        json['symbol'] as Map<String, dynamic>?,
      )!,
      backdrop: UpgradedGiftBackdrop.fromJson(
        json['backdrop'] as Map<String, dynamic>?,
      )!,
      originalDetails: UpgradedGiftOriginalDetails.fromJson(
        json['original_details'] as Map<String, dynamic>?,
      ),
      resaleStarCount: json['resale_star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'title': title,
    'name': name,
    'number': number,
    'total_upgraded_count': totalUpgradedCount,
    'max_upgraded_count': maxUpgradedCount,
    'owner_id': ownerId?.toJson(),
    'owner_address': ownerAddress,
    'owner_name': ownerName,
    'gift_address': giftAddress,
    'model': model.toJson(),
    'symbol': symbol.toJson(),
    'backdrop': backdrop.toJson(),
    'original_details': originalDetails?.toJson(),
    'resale_star_count': resaleStarCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
