import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns menu button set by the bot for the given user; for bots only
/// Returns [BotMenuButton]
@immutable
class GetMenuButton extends TdFunction {
  const GetMenuButton({
    required this.userId,
  });

  /// [userId] Identifier of the user or 0 to get the default menu button
  final int userId;

  static const String constructor = 'getMenuButton';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
