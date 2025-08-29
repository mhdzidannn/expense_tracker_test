# expense_tracker_test

Offline first expense tracker app, assignment by halogen.my

At the time of this writing, the base requirement is completed. Truth be told its hard to complete this assignment during the weekdays with current work and personal responsibilities, so I've tried to fit all the time I can into it.

- [Link to apk file](https://drive.google.com/drive/folders/139SnmFd7z05l2o65mIf0qUXvWeQxGQ01?usp=sharing)

App doesnt have any http request apart from getting the categories of spending.

## Getting Started

1. Repo is using FLutter version 3.32.4
2. Run `flutter pub get`
3. RUn `flutter pub run build_runner build --delete-conflicting-outputs` to generate files


## Some rather important notes

1. Why offline? Why is there no backend connection?

I'm thinking this app should work regardless of network connectivity in cases where you go on a remote island with limited internet. However, I've made a super easy sync mechanism that sync back the data from local to backend. Checkout the [database] folder

2. Why incosistency in the locale?

Initially I am using the proper locale with all Strings (Tr.current.any_strings) but as i moved forward, I dont have the luxury of time to clean it

3. No unit tests?

Can just ask AI to generate it. I'm using bloc with Clean Architecture in mind and DI using GetIt, so tests should be easily generated using mockito or mocktail.