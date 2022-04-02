import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes a profile photo for the current user
/// Returns [Ok]
class SetProfilePhoto extends TdFunction {
  SetProfilePhoto({required this.photo});

  /// [photo] Profile photo to set
  final InputChatPhoto photo;

  static const String CONSTRUCTOR = 'setProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'photo': this.photo.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
