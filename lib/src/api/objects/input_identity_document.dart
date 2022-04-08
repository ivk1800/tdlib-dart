import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An identity document to be saved to Telegram Passport
@immutable
class InputIdentityDocument extends TdObject {
  const InputIdentityDocument({
    required this.number,
    this.expiryDate,
    required this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
  });

  /// [number] Document number; 1-24 characters
  final String number;

  /// [expiryDate] Document expiry date; pass null if not applicable
  final Date? expiryDate;

  /// [frontSide] Front side of the document
  final InputFile frontSide;

  /// [reverseSide] Reverse side of the document; only for driver license and
  /// identity card; pass null otherwise
  final InputFile? reverseSide;

  /// [selfie] Selfie with the document; pass null if unavailable
  final InputFile? selfie;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<InputFile> translation;

  static const String constructor = 'inputIdentityDocument';

  static InputIdentityDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputIdentityDocument(
      number: json['number'],
      expiryDate: Date.fromJson(json['expiry_date']),
      frontSide: InputFile.fromJson(json['front_side'])!,
      reverseSide: InputFile.fromJson(json['reverse_side']),
      selfie: InputFile.fromJson(json['selfie']),
      translation: List<InputFile>.from((json['translation'] ?? [])
          .map((item) => InputFile.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'number': number,
        'expiry_date': expiryDate?.toJson(),
        'front_side': frontSide.toJson(),
        'reverse_side': reverseSide?.toJson(),
        'selfie': selfie?.toJson(),
        'translation': translation.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
