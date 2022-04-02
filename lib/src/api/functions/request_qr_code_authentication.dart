import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Requests QR code authentication by scanning a QR code on another logged in
/// device. Works only when the current authorization state is
/// authorizationStateWaitPhoneNumber,. or if there is no pending
/// authentication query and the current authorization state is
/// authorizationStateWaitCode, authorizationStateWaitRegistration, or
/// authorizationStateWaitPassword
/// Returns [Ok]
class RequestQrCodeAuthentication extends TdFunction {
  RequestQrCodeAuthentication({required this.otherUserIds});

  /// [otherUserIds] List of user identifiers of other users currently using the
  /// application
  final List<int> otherUserIds;

  static const String CONSTRUCTOR = 'requestQrCodeAuthentication';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'other_user_ids': otherUserIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
