import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with an invoice; can be used only by bots
@immutable
class InputMessageInvoice extends InputMessageContent {
  const InputMessageInvoice({
    required this.invoice,
    required this.title,
    required this.description,
    this.photoUrl,
    required this.photoSize,
    required this.photoWidth,
    required this.photoHeight,
    required this.payload,
    required this.providerToken,
    required this.providerData,
    required this.startParameter,
    required this.extendedMediaContent,
  });

  /// [invoice] Invoice
  final Invoice invoice;

  /// [title] Product title; 1-32 characters
  final String title;

  /// param_[description] Product description; 0-255 characters
  final String description;

  /// [photoUrl] Product photo URL; optional
  final String? photoUrl;

  /// [photoSize] Product photo size
  final int photoSize;

  /// [photoWidth] Product photo width
  final int photoWidth;

  /// [photoHeight] Product photo height
  final int photoHeight;

  /// [payload] The invoice payload
  final String payload;

  /// [providerToken] Payment provider token
  final String providerToken;

  /// [providerData] JSON-encoded data about the invoice, which will be shared
  /// with the payment provider
  final String providerData;

  /// [startParameter] Unique invoice bot deep link parameter for the generation
  /// of this invoice. If empty, it would be possible to pay directly from
  /// forwards of the invoice message
  final String startParameter;

  /// [extendedMediaContent] The content of extended media attached to the
  /// invoice. The content of the message to be sent. Must be one of the
  /// following types: inputMessagePhoto, inputMessageVideo
  final InputMessageContent extendedMediaContent;

  static const String constructor = 'inputMessageInvoice';

  static InputMessageInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageInvoice(
      invoice: Invoice.fromJson(json['invoice'])!,
      title: json['title'],
      description: json['description'],
      photoUrl: json['photo_url'],
      photoSize: json['photo_size'],
      photoWidth: json['photo_width'],
      photoHeight: json['photo_height'],
      payload: json['payload'],
      providerToken: json['provider_token'],
      providerData: json['provider_data'],
      startParameter: json['start_parameter'],
      extendedMediaContent:
          InputMessageContent.fromJson(json['extended_media_content'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invoice': invoice.toJson(),
        'title': title,
        'description': description,
        'photo_url': photoUrl,
        'photo_size': photoSize,
        'photo_width': photoWidth,
        'photo_height': photoHeight,
        'payload': payload,
        'provider_token': providerToken,
        'provider_data': providerData,
        'start_parameter': startParameter,
        'extended_media_content': extendedMediaContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
