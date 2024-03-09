import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes privacy settings for message read date
/// Returns [Ok]
@immutable
class SetReadDatePrivacySettings extends TdFunction {
  const SetReadDatePrivacySettings({
    required this.settings,
  });

  /// [settings] New settings
  final ReadDatePrivacySettings settings;

  static const String constructor = 'setReadDatePrivacySettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'settings': settings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
