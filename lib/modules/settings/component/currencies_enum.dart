import 'package:freezed_annotation/freezed_annotation.dart';

enum Currency {
  @JsonValue("usd")
  usd('USD', '\$', 'United States'),
  @JsonValue("eur")
  eur('EUR', '€', 'Eurozone'),
  @JsonValue("gbp")
  gbp('JPY', '£', 'United Kingdom'),
  @JsonValue("jpy")
  jpy('JPY', '¥', 'Japan'),
  @JsonValue("cny")
  cny('CNY', '¥', 'China'),
  @JsonValue("inr")
  inr('INR', '₹', 'India'),
  @JsonValue("myr")
  myr('MYR', 'RM', 'Malaysia'),
  @JsonValue("aud")
  aud('AUD', 'A\$', 'Australia'),
  @JsonValue("cad")
  cad('CAD', 'C\$', 'Canada'),
  @JsonValue("sgd")
  sgd('SGD', 'S\$', 'Singapore');

  final String code;
  final String symbol;
  final String country;

  const Currency(this.code, this.symbol, this.country);

  double convertTo(Currency target, double amount) {
    if (this == target) return amount;
    final rate = CurrencyEnum.exchangeRates[code]?[target.code];
    if (rate == null) {
      throw Exception("Conversion rate not available: $code → ${target.code}");
    }
    return amount * rate;
  }

  String toJson() => name;

  static Currency fromJson(String json) =>
      Currency.values.firstWhere((c) => c.name.toLowerCase() == json.toLowerCase());
}

extension CurrencyEnum on Currency {
  static Currency fromCode(String code) {
    return Currency.values.firstWhere((c) => c.code == code, orElse: () => Currency.myr);
  }

  /// Static exchange rates because i do not want to integrate live API for this :)
  static const Map<String, Map<String, double>> exchangeRates = {
    "USD": {
      "EUR": 0.91,
      "GBP": 0.78,
      "JPY": 146.5,
      "CNY": 7.25,
      "INR": 83.2,
      "MYR": 4.68,
      "AUD": 1.52,
      "CAD": 1.36,
      "SGD": 1.35,
    },
    "EUR": {
      "USD": 1.10,
      "GBP": 0.86,
      "JPY": 161.2,
      "CNY": 7.95,
      "INR": 91.4,
      "MYR": 5.15,
      "AUD": 1.67,
      "CAD": 1.50,
      "SGD": 1.48,
    },
    "GBP": {
      "USD": 1.28,
      "EUR": 1.16,
      "JPY": 187.2,
      "CNY": 9.23,
      "INR": 106.0,
      "MYR": 6.00,
      "AUD": 1.95,
      "CAD": 1.76,
      "SGD": 1.74,
    },
    "JPY": {
      "USD": 0.0068,
      "EUR": 0.0062,
      "GBP": 0.0053,
      "CNY": 0.049,
      "INR": 0.57,
      "MYR": 0.032,
      "AUD": 0.010,
      "CAD": 0.0094,
      "SGD": 0.0093,
    },
    "CNY": {
      "USD": 0.14,
      "EUR": 0.13,
      "GBP": 0.11,
      "JPY": 20.2,
      "INR": 11.5,
      "MYR": 0.65,
      "AUD": 0.21,
      "CAD": 0.19,
      "SGD": 0.19,
    },
    "INR": {
      "USD": 0.012,
      "EUR": 0.011,
      "GBP": 0.0094,
      "JPY": 1.75,
      "CNY": 0.087,
      "MYR": 0.056,
      "AUD": 0.018,
      "CAD": 0.016,
      "SGD": 0.016,
    },
    "MYR": {
      "USD": 0.21,
      "EUR": 0.19,
      "GBP": 0.17,
      "JPY": 31.3,
      "CNY": 1.55,
      "INR": 17.8,
      "AUD": 0.32,
      "CAD": 0.29,
      "SGD": 0.29,
    },
    "AUD": {
      "USD": 0.66,
      "EUR": 0.60,
      "GBP": 0.51,
      "JPY": 96.3,
      "CNY": 4.70,
      "INR": 54.8,
      "MYR": 3.12,
      "CAD": 0.89,
      "SGD": 0.88,
    },
    "CAD": {
      "USD": 0.74,
      "EUR": 0.67,
      "GBP": 0.57,
      "JPY": 108.0,
      "CNY": 5.22,
      "INR": 62.0,
      "MYR": 3.42,
      "AUD": 1.12,
      "SGD": 0.99,
    },
    "SGD": {
      "USD": 0.74,
      "EUR": 0.68,
      "GBP": 0.57,
      "JPY": 108.5,
      "CNY": 5.27,
      "INR": 62.5,
      "MYR": 3.44,
      "AUD": 1.13,
      "CAD": 1.01,
    },
  };
}
