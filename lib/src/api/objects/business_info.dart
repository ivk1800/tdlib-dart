import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Business account
@immutable
class BusinessInfo extends TdObject {
  const BusinessInfo({
    this.location,
    this.openingHours,
    this.greetingMessageSettings,
    this.awayMessageSettings,
  });

  /// [location] Location of the business; may be null if none
  final BusinessLocation? location;

  /// [openingHours] Opening hours of the business; may be null if none. The
  /// hours are guaranteed to be valid and has already been split by week days
  final BusinessOpeningHours? openingHours;

  /// [greetingMessageSettings] The greeting message; may be null if none or the
  /// Business account is not of the current user
  final BusinessGreetingMessageSettings? greetingMessageSettings;

  /// [awayMessageSettings] The away message; may be null if none or the
  /// Business account is not of the current user
  final BusinessAwayMessageSettings? awayMessageSettings;

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
      greetingMessageSettings: BusinessGreetingMessageSettings.fromJson(
          json['greeting_message_settings'] as Map<String, dynamic>?),
      awayMessageSettings: BusinessAwayMessageSettings.fromJson(
          json['away_message_settings'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location?.toJson(),
        'opening_hours': openingHours?.toJson(),
        'greeting_message_settings': greetingMessageSettings?.toJson(),
        'away_message_settings': awayMessageSettings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
