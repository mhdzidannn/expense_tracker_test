# expense_tracker_test

Offline first expense tracker app, assignment by halogen.my

At the time of this writing, the base requirement is completed. Truth be told its hard to complete this assignment during the weekdays with current work and personal responsibilities, so I've tried to fit all the time I can into it.

- [Link to apk file](https://drive.google.com/drive/folders/139SnmFd7z05l2o65mIf0qUXvWeQxGQ01?usp=sharing)

App doesnt have any http request apart from getting the categories of spending.

## App FAQ

1. What does sync do

Sync backend with local. WHich in the current case will be fetching the categories only

2. Set monthly expense

At the settings page, you can backtrack the monthly expenses you want to set

3. Update or delete recorded expenses

Swipe the tile from left to right to edit (background will show green color). The inverse would be delete (red background color)

4. How to assign colors to categories

I just thought of this lol, but its currently random :D

5. Currency changes on spent?

You can change the currencies when inputting expense by tapping the icon and select which currencies is desired upom.

## Getting Started on the repo

1. Repo is using FLutter version 3.32.4
2. Run `flutter pub get`
3. RUn `flutter pub run build_runner build --delete-conflicting-outputs` to generate files

## TODO
1. Charts! ✅ 
2. User edit recommendedPercentage from the API
3. Currency exchange mechanism (it is static so no API calls) ✅ 

## Some rather important notes

1. Why offline? Why is there no backend connection?

I'm thinking this app should work regardless of network connectivity in cases where you go on a remote island with limited internet. However, I've made a super easy sync mechanism that sync back the data from local to backend. Checkout the [database] folder

2. Why incosistency in the locale?

Initially I am using the proper locale with all Strings (Tr.current.any_strings) but as i moved forward, I dont have the luxury of time to clean it

3. No unit tests?

Can just ask AI to generate it. I'm using bloc with Clean Architecture in mind and DI using GetIt, so tests should be easily generated using mockito or mocktail.

## The static currencies mapping

```
  static const Map<String, Map<String, double>> exchangeRates = {
    "USD": {
      "USD": 1,
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
      "EUR": 1,
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
      "GBP": 1,
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
      "JPY": 1,
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
      "CNY": 1,
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
      "INR": 1,
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
      "MYR": 1,
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
      "AUD": 1,
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
      "CAD": 1,
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
      "SGD": 1,
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
```