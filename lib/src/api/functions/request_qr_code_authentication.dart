import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Requests QR code authentication by scanning a QR code on another logged in
/// device. Works only when the current authorization state is
/// authorizationStateWaitPhoneNumber,. or if there is no pending
/// authentication query and the current authorization state is
/// authorizationStateWaitCode, authorizationStateWaitRegistration, or
/// authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class RequestQrCodeAuthentication extends TdFunction {
  const RequestQrCodeAuthentication({
    required this.otherUserIds,
  });

  /// [otherUserIds] List of user identifiers of other users currently using the
  /// application
  final List<int> otherUserIds;

  static const String constructor = 'requestQrCodeAuthentication';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'other_user_ids': otherUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
