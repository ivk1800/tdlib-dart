import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns privacy settings for new chat creation
/// Returns [NewChatPrivacySettings]
@immutable
class GetNewChatPrivacySettings extends TdFunction {
  const GetNewChatPrivacySettings();

  static const String constructor = 'getNewChatPrivacySettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
