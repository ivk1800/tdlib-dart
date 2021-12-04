import '../tdapi.dart';

/// Creates a new supergroup or channel and sends a corresponding
/// messageSupergroupChatCreate. Returns the newly created chat
/// Returns [Chat]
class CreateNewSupergroupChat extends TdFunction {
  CreateNewSupergroupChat(
      {required this.title,
      required this.isChannel,
      required this.description,
      this.location,
      required this.forImport});

  /// [title] Title of the new chat; 1-128 characters
  final String title;

  /// [isChannel] True, if a channel chat needs to be created
  final bool isChannel;

  /// param_[description] Chat description; 0-255 characters
  final String description;

  /// [location] Chat location if a location-based supergroup is being created;
  /// pass null to create an ordinary supergroup chat
  final ChatLocation? location;

  /// [forImport] True, if the supergroup is created for importing messages
  /// using importMessage
  final bool forImport;

  static const String CONSTRUCTOR = 'createNewSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'title': this.title,
        'is_channel': this.isChannel,
        'description': this.description,
        'location': this.location?.toJson(),
        'for_import': this.forImport,
        '@type': CONSTRUCTOR
      };
}
