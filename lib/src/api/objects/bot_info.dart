import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a bot
@immutable
class BotInfo extends TdObject {
  const BotInfo({
    required this.shortDescription,
    required this.description,
    this.photo,
    this.animation,
    this.menuButton,
    required this.commands,
    this.defaultGroupAdministratorRights,
    this.defaultChannelAdministratorRights,
  });

  /// [shortDescription] The text that is shown on the bot's profile page and is
  /// sent together with the link when users share the bot
  final String shortDescription;

  /// param_[description] The text shown in the chat with the bot if the chat is
  /// empty
  final String description;

  /// [photo] Photo shown in the chat with the bot if the chat is empty; may be
  /// null
  final Photo? photo;

  /// [animation] Animation shown in the chat with the bot if the chat is empty;
  /// may be null
  final Animation? animation;

  /// [menuButton] Information about a button to show instead of the bot
  /// commands menu button; may be null if ordinary bot commands menu must be
  /// shown
  final BotMenuButton? menuButton;

  /// [commands] List of the bot commands
  final List<BotCommand> commands;

  /// [defaultGroupAdministratorRights] Default administrator rights for adding
  /// the bot to basic group and supergroup chats; may be null
  final ChatAdministratorRights? defaultGroupAdministratorRights;

  /// [defaultChannelAdministratorRights] Default administrator rights for
  /// adding the bot to channels; may be null
  final ChatAdministratorRights? defaultChannelAdministratorRights;

  static const String constructor = 'botInfo';

  static BotInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotInfo(
      shortDescription: json['short_description'] as String,
      description: json['description'] as String,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
      animation: Animation.fromJson(json['animation'] as Map<String, dynamic>?),
      menuButton:
          BotMenuButton.fromJson(json['menu_button'] as Map<String, dynamic>?),
      commands: List<BotCommand>.from(
          ((json['commands'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BotCommand.fromJson(item))
              .toList()),
      defaultGroupAdministratorRights: ChatAdministratorRights.fromJson(
          json['default_group_administrator_rights'] as Map<String, dynamic>?),
      defaultChannelAdministratorRights: ChatAdministratorRights.fromJson(
          json['default_channel_administrator_rights']
              as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'short_description': shortDescription,
        'description': description,
        'photo': photo?.toJson(),
        'animation': animation?.toJson(),
        'menu_button': menuButton?.toJson(),
        'commands': commands.map((item) => item.toJson()).toList(),
        'default_group_administrator_rights':
            defaultGroupAdministratorRights?.toJson(),
        'default_channel_administrator_rights':
            defaultChannelAdministratorRights?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
