import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ulid/ulid.dart';

class NotificationContent {
  final String id;
  final Duration duration;
  final VoidCallback? onDismiss;
  final Widget title;
  final Widget? content;
  final Widget? custom;

  NotificationContent({
    String? id,
    this.duration = const Duration(seconds: 2),
    this.onDismiss,
    required this.title,
    this.content,
    this.custom,
  }) : id = id ?? Ulid().toCanonical();

  void _start() {
    if (duration == Duration.zero) {
      return;
    }
    Future.delayed(duration, () {
      onDismiss?.call();
    });
  }

  NotificationContent _copyWith({
    Duration? duration,
    VoidCallback? onDismiss,
  }) =>
      NotificationContent(
        id: id,
        duration: duration ?? this.duration,
        onDismiss: onDismiss ?? this.onDismiss,
        title: title,
        content: content,
        custom: custom,
      );
}

class NotificationState {
  final List<NotificationContent> notifications;

  NotificationState({this.notifications = const <NotificationContent>[]});

  NotificationState copyWith({
    List<NotificationContent>? notifications,
  }) =>
      NotificationState(
        notifications: notifications ?? this.notifications,
      );
}

@lazySingleton
class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(NotificationState());

  void addNotification(NotificationContent notification) {
    final notificationConfigured = notification._copyWith(
      onDismiss: () {
        emit(state.copyWith(notifications: state.notifications.where((n) => n.id != notification.id).toList()));
      },
    );
    emit(state.copyWith(notifications: [...state.notifications, notificationConfigured.._start()]));
  }

  void removeNotification(String id) {
    emit(state.copyWith(notifications: state.notifications.where((n) => n.id != id).toList()));
  }
}
