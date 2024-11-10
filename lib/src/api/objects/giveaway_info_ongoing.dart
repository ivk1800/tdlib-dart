import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an ongoing giveaway
@immutable
class GiveawayInfoOngoing extends GiveawayInfo {
  const GiveawayInfoOngoing({
    required this.creationDate,
    required this.status,
    required this.isEnded,
  });

  /// [creationDate] Point in time (Unix timestamp) when the giveaway was
  /// created
  final int creationDate;

  /// [status] Status of the current user in the giveaway
  final GiveawayParticipantStatus status;

  /// [isEnded] True, if the giveaway has ended and results are being prepared
  final bool isEnded;

  static const String constructor = 'giveawayInfoOngoing';

  static GiveawayInfoOngoing? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayInfoOngoing(
      creationDate: json['creation_date'] as int,
      status: GiveawayParticipantStatus.fromJson(
          json['status'] as Map<String, dynamic>?)!,
      isEnded: json['is_ended'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'creation_date': creationDate,
        'status': status.toJson(),
        'is_ended': isEnded,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
