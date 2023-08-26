class TokenModel {
  final bool ok;
  final TokenData data;

  TokenModel({required this.ok, required this.data});

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(
      ok: json['ok'],
      data: TokenData.fromJson(json['data']),
    );
  }
}

class TokenData {
  final String token;

  TokenData({required this.token});

  factory TokenData.fromJson(Map<String, dynamic> json) {
    return TokenData(
      token: json['token'],
    );
  }
}
