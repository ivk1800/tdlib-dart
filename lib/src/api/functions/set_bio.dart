import '../tdapi.dart';

/// Changes the bio of the current user
/// Returns [Ok]
class SetBio extends TdFunction {
  SetBio({required this.bio});

  /// [bio] The new value of the user bio; 0-70 characters without line feeds
  final String bio;

  static const String CONSTRUCTOR = 'setBio';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'bio': this.bio, '@type': CONSTRUCTOR};
}
