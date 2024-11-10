import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Download or upload file speed for the user was limited, but it can be
/// restored by subscription to Telegram Premium. The notification can be
/// postponed until a being downloaded or uploaded file is visible to the
/// user. Use getOption("premium_download_speedup") or
/// getOption("premium_upload_speedup") to get expected speedup after
/// subscription to Telegram Premium
@immutable
class UpdateSpeedLimitNotification extends Update {
  const UpdateSpeedLimitNotification({
    required this.isUpload,
  });

  /// [isUpload] True, if upload speed was limited; false, if download speed was
  /// limited
  final bool isUpload;

  static const String constructor = 'updateSpeedLimitNotification';

  static UpdateSpeedLimitNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSpeedLimitNotification(
      isUpload: json['is_upload'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_upload': isUpload,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
