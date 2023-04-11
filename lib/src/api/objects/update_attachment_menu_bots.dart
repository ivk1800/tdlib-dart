import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of bots added to attachment menu has changed
@immutable
class UpdateAttachmentMenuBots extends Update {
  const UpdateAttachmentMenuBots({
    required this.bots,
  });

  /// [bots] The new list of bots added to attachment menu. The bots must not be
  /// shown on scheduled messages screen
  final List<AttachmentMenuBot> bots;

  static const String constructor = 'updateAttachmentMenuBots';

  static UpdateAttachmentMenuBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAttachmentMenuBots(
      bots: List<AttachmentMenuBot>.from(
          ((json['bots'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => AttachmentMenuBot.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bots': bots.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
