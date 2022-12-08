import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a new supergroup or channel and sends a corresponding
/// messageSupergroupChatCreate. Returns the newly created chat
/// Returns [Chat]
@immutable
class CreateNewSupergroupChat extends TdFunction {
  const CreateNewSupergroupChat({
    required this.title,
    required this.isChannel,
    required this.description,
    this.location,
    required this.messageTtl,
    required this.forImport,
  });

  /// [title] Title of the new chat; 1-128 characters
  final String title;

  /// [isChannel] Pass true to create a channel chat
  final bool isChannel;

  /// param_[description] Chat description; 0-255 characters
  final String description;

  /// [location] Chat location if a location-based supergroup is being created;
  /// pass null to create an ordinary supergroup chat
  final ChatLocation? location;

  /// [messageTtl] Message TTL value, in seconds; must be from 0 up to 365 *
  /// 86400 and be divisible by 86400. If 0, then messages aren't deleted
  /// automatically
  final int messageTtl;

  /// [forImport] Pass true to create a supergroup for importing messages using
  /// importMessage
  final bool forImport;

  static const String constructor = 'createNewSupergroupChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'is_channel': isChannel,
        'description': description,
        'location': location?.toJson(),
        'message_ttl': messageTtl,
        'for_import': forImport,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
