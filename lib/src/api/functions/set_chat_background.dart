import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the background in a specific chat. Supported only in private and
/// secret chats with non-deleted users
/// Returns [Ok]
@immutable
class SetChatBackground extends TdFunction {
  const SetChatBackground({
    required this.chatId,
    this.background,
    this.type,
    required this.darkThemeDimming,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [background] The input background to use; pass null to create a new filled
  /// background or to remove the current background
  final InputBackground? background;

  /// [type] Background type; pass null to remove the current background
  final BackgroundType? type;

  /// [darkThemeDimming] Dimming of the background in dark themes, as a
  /// percentage; 0-100
  final int darkThemeDimming;

  static const String constructor = 'setChatBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'background': background?.toJson(),
        'type': type?.toJson(),
        'dark_theme_dimming': darkThemeDimming,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
