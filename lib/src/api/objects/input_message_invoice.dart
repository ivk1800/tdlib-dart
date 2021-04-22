import '../tdapi.dart';

/// A message with an invoice; can be used only by bots and only in private
/// chats
class InputMessageInvoice extends InputMessageContent {
  InputMessageInvoice(
      {required this.invoice,
      required this.title,
      required this.description,
      required this.photoUrl,
      required this.photoSize,
      required this.photoWidth,
      required this.photoHeight,
      required this.payload,
      required this.providerToken,
      required this.providerData,
      required this.startParameter});

  /// [invoice] Invoice
  final Invoice invoice;

  /// [title] Product title; 1-32 characters
  final String title;

  /// param_[description] Product description; 0-255 characters
  final String description;

  /// [photoUrl] Product photo URL; optional
  final String photoUrl;

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

  /// [startParameter] Unique invoice bot start_parameter for the generation of
  /// this invoice
  final String startParameter;

  static const String CONSTRUCTOR = 'inputMessageInvoice';

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
        startParameter: json['start_parameter']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invoice': this.invoice.toJson(),
        'title': this.title,
        'description': this.description,
        'photo_url': this.photoUrl,
        'photo_size': this.photoSize,
        'photo_width': this.photoWidth,
        'photo_height': this.photoHeight,
        'payload': this.payload,
        'provider_token': this.providerToken,
        'provider_data': this.providerData,
        'start_parameter': this.startParameter,
        '@type': CONSTRUCTOR
      };
}
