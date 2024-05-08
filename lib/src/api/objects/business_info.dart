import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Business account
@immutable
class BusinessInfo extends TdObject {
  const BusinessInfo({
    this.location,
    this.openingHours,
    this.localOpeningHours,
    required this.nextOpenIn,
    required this.nextCloseIn,
    this.greetingMessageSettings,
    this.awayMessageSettings,
    this.startPage,
  });

  /// [location] Location of the business; may be null if none
  final BusinessLocation? location;

  /// [openingHours] Opening hours of the business; may be null if none. The
  /// hours are guaranteed to be valid and has already been split by week days
  final BusinessOpeningHours? openingHours;

  /// [localOpeningHours] Opening hours of the business in the local time; may
  /// be null if none. The hours are guaranteed to be valid and has already been
  /// split by week days. Local time zone identifier will be empty. An
  /// updateUserFullInfo update is not triggered when value of this field
  /// changes
  final BusinessOpeningHours? localOpeningHours;

  /// [nextOpenIn] Time left before the business will open the next time, in
  /// seconds; 0 if unknown. An updateUserFullInfo update is not triggered when
  /// value of this field changes
  final int nextOpenIn;

  /// [nextCloseIn] Time left before the business will close the next time, in
  /// seconds; 0 if unknown. An updateUserFullInfo update is not triggered when
  /// value of this field changes
  final int nextCloseIn;

  /// [greetingMessageSettings] The greeting message; may be null if none or the
  /// Business account is not of the current user
  final BusinessGreetingMessageSettings? greetingMessageSettings;

  /// [awayMessageSettings] The away message; may be null if none or the
  /// Business account is not of the current user
  final BusinessAwayMessageSettings? awayMessageSettings;

  /// [startPage] Information about start page of the account; may be null if
  /// none
  final BusinessStartPage? startPage;

  static const String constructor = 'businessInfo';

  static BusinessInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessInfo(
      location:
          BusinessLocation.fromJson(json['location'] as Map<String, dynamic>?),
      openingHours: BusinessOpeningHours.fromJson(
          json['opening_hours'] as Map<String, dynamic>?),
      localOpeningHours: BusinessOpeningHours.fromJson(
          json['local_opening_hours'] as Map<String, dynamic>?),
      nextOpenIn: json['next_open_in'] as int,
      nextCloseIn: json['next_close_in'] as int,
      greetingMessageSettings: BusinessGreetingMessageSettings.fromJson(
          json['greeting_message_settings'] as Map<String, dynamic>?),
      awayMessageSettings: BusinessAwayMessageSettings.fromJson(
          json['away_message_settings'] as Map<String, dynamic>?),
      startPage: BusinessStartPage.fromJson(
          json['start_page'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location?.toJson(),
        'opening_hours': openingHours?.toJson(),
        'local_opening_hours': localOpeningHours?.toJson(),
        'next_open_in': nextOpenIn,
        'next_close_in': nextCloseIn,
        'greeting_message_settings': greetingMessageSettings?.toJson(),
        'away_message_settings': awayMessageSettings?.toJson(),
        'start_page': startPage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
