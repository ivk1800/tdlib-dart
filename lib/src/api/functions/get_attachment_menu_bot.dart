import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a bot that can be added to attachment menu
/// Returns [AttachmentMenuBot]
@immutable
class GetAttachmentMenuBot extends TdFunction {
  const GetAttachmentMenuBot({
    required this.botUserId,
  });

  /// [botUserId] Bot's user identifier
  final int botUserId;

  static const String constructor = 'getAttachmentMenuBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
