import 'package:expense_tracker_test/components/notification/notification_cubit.dart';
import 'package:expense_tracker_test/misc/hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';

class NotificationBuilder extends HookWidget {
  final Widget child;

  const NotificationBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final state = useBlocBuilder<NotificationCubit, NotificationState>();

    return PortalTarget(
      portalFollower: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Wrap(
          direction: Axis.vertical,
          spacing: 10,
          runSpacing: 20,
          children: [
            if (state.notifications.isNotEmpty) const SizedBox(height: 20),
            for (final notification in state.notifications) ...[
              if (notification.custom != null)
                Material(color: Colors.transparent, child: notification.custom!)
              else
                Material(
                  color: Colors.transparent,
                  child: Card(
                    color: const Color(0xFFEEEEEE).withValues(alpha: .95),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(20),
                        title: DefaultTextStyle(
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                          child: notification.title,
                        ),
                        subtitle: DefaultTextStyle(
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.normal, fontSize: 16),
                          child: notification.content ?? const SizedBox.shrink(),
                        ),
                        trailing: IconButton(
                          alignment: Alignment.topRight,
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            context.read<NotificationCubit>().removeNotification(notification.id);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
      anchor: const Aligned(follower: Alignment.topRight, target: Alignment.topRight),
      child: child,
    );
  }
}
