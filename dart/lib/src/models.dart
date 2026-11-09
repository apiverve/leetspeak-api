/// Response models for the Leet Speak API.

/// API Response wrapper.
class LeetspeakResponse {
  final String status;
  final dynamic error;
  final LeetspeakData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  LeetspeakResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory LeetspeakResponse.fromJson(Map<String, dynamic> json) => LeetspeakResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? LeetspeakData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Leet Speak API.

class LeetspeakData {
  String? text;
  String? mode;
  num? changedCharacters;

  LeetspeakData({
    this.text,
    this.mode,
    this.changedCharacters,
  });

  factory LeetspeakData.fromJson(Map<String, dynamic> json) => LeetspeakData(
      text: json['text'],
      mode: json['mode'],
      changedCharacters: json['changedCharacters'],
    );
}

class LeetspeakRequest {
  String text;
  String mode;

  LeetspeakRequest({
    required this.text,
    required this.mode,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
      'mode': mode,
    };
}
