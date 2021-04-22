import '../tdapi.dart';

/// The chat description was changed
class ChatEventDescriptionChanged extends ChatEventAction {
  ChatEventDescriptionChanged(
      {required this.oldDescription, required this.newDescription});

  /// [oldDescription] Previous chat description
  final String oldDescription;

  /// [newDescription] New chat description
  final String newDescription;

  static const String CONSTRUCTOR = 'chatEventDescriptionChanged';

  static ChatEventDescriptionChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventDescriptionChanged(
        oldDescription: json['old_description'],
        newDescription: json['new_description']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_description': this.oldDescription,
        'new_description': this.newDescription,
        '@type': CONSTRUCTOR
      };
}
