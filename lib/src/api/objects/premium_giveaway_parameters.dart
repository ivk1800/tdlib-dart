import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes parameters of a Telegram Premium giveaway
@immutable
class PremiumGiveawayParameters extends TdObject {
  const PremiumGiveawayParameters({
    required this.boostedChatId,
    required this.additionalChatIds,
    required this.winnersSelectionDate,
    required this.onlyNewMembers,
    required this.countryCodes,
  });

  /// [boostedChatId] Identifier of the channel chat, which will be
  /// automatically boosted by the winners of the giveaway for duration of the
  /// Premium subscription
  final int boostedChatId;

  /// [additionalChatIds] Identifiers of other channel chats that must be
  /// subscribed by the users to be eligible for the giveaway. There can be up
  /// to getOption("giveaway_additional_chat_count_max") additional chats
  final List<int> additionalChatIds;

  /// [winnersSelectionDate] Point in time (Unix timestamp) when the giveaway is
  /// expected to be performed; must be 60-getOption("giveaway_duration_max")
  /// seconds in the future in scheduled giveaways
  final int winnersSelectionDate;

  /// [onlyNewMembers] True, if only new subscribers of the chats will be
  /// eligible for the giveaway
  final bool onlyNewMembers;

  /// [countryCodes] The list of two-letter ISO 3166-1 alpha-2 codes of
  /// countries, users from which will be eligible for the giveaway. If empty,
  /// then all users can participate in the giveaway. There can be up to
  /// getOption("giveaway_country_count_max") chosen countries. Users with phone
  /// number that was bought on Fragment can participate in any giveaway and the
  /// country code "FT" must not be specified in the list
  final List<String> countryCodes;

  static const String constructor = 'premiumGiveawayParameters';

  static PremiumGiveawayParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiveawayParameters(
      boostedChatId: json['boosted_chat_id'] as int,
      additionalChatIds: List<int>.from(
          ((json['additional_chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      winnersSelectionDate: json['winners_selection_date'] as int,
      onlyNewMembers: json['only_new_members'] as bool,
      countryCodes: List<String>.from(
          ((json['country_codes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'boosted_chat_id': boostedChatId,
        'additional_chat_ids': additionalChatIds.map((item) => item).toList(),
        'winners_selection_date': winnersSelectionDate,
        'only_new_members': onlyNewMembers,
        'country_codes': countryCodes.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
