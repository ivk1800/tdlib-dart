import '../tdapi.dart';

/// Describes theme settings
class ThemeSettings extends TdObject {
  ThemeSettings(
      {required this.accentColor,
      this.background,
      required this.outgoingMessageFill,
      required this.animateOutgoingMessageFill,
      required this.outgoingMessageAccentColor});

  /// [accentColor] Theme accent color in ARGB format
  final int accentColor;

  /// [background] The background to be used in chats; may be null
  final Background? background;

  /// [outgoingMessageFill] The fill to be used as a background for outgoing
  /// messages
  final BackgroundFill outgoingMessageFill;

  /// [animateOutgoingMessageFill] If true, the freeform gradient fill needs to
  /// be animated on every sent message
  final bool animateOutgoingMessageFill;

  /// [outgoingMessageAccentColor] Accent color of outgoing messages in ARGB
  /// format
  final int outgoingMessageAccentColor;

  static const String CONSTRUCTOR = 'themeSettings';

  static ThemeSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ThemeSettings(
        accentColor: json['accent_color'],
        background: Background.fromJson(json['background']),
        outgoingMessageFill:
            BackgroundFill.fromJson(json['outgoing_message_fill'])!,
        animateOutgoingMessageFill: json['animate_outgoing_message_fill'],
        outgoingMessageAccentColor: json['outgoing_message_accent_color']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'accent_color': this.accentColor,
        'background': this.background?.toJson(),
        'outgoing_message_fill': this.outgoingMessageFill.toJson(),
        'animate_outgoing_message_fill': this.animateOutgoingMessageFill,
        'outgoing_message_accent_color': this.outgoingMessageAccentColor,
        '@type': CONSTRUCTOR
      };
}
