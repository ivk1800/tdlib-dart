import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes theme settings
@immutable
class ThemeSettings extends TdObject {
  const ThemeSettings({
    required this.accentColor,
    this.background,
    required this.outgoingMessageFill,
    required this.animateOutgoingMessageFill,
    required this.outgoingMessageAccentColor,
  });

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

  static const String constructor = 'themeSettings';

  static ThemeSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ThemeSettings(
      accentColor: json['accent_color'] as int,
      background:
          Background.fromJson(json['background'] as Map<String, dynamic>?),
      outgoingMessageFill: BackgroundFill.fromJson(
          json['outgoing_message_fill'] as Map<String, dynamic>?)!,
      animateOutgoingMessageFill: json['animate_outgoing_message_fill'] as bool,
      outgoingMessageAccentColor: json['outgoing_message_accent_color'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'accent_color': accentColor,
        'background': background?.toJson(),
        'outgoing_message_fill': outgoingMessageFill.toJson(),
        'animate_outgoing_message_fill': animateOutgoingMessageFill,
        'outgoing_message_accent_color': outgoingMessageAccentColor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
