import 'package:expense_tracker_test/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:sizer/sizer.dart';

enum SnackbarStatus { success, error, info, warning }

class SnackbarService {
  static Color _getBgColor(SnackbarStatus status) {
    switch (status) {
      case SnackbarStatus.success:
        return Colors.green;
      case SnackbarStatus.error:
        return Colors.red;
      case SnackbarStatus.info:
        return Colors.grey;
      case SnackbarStatus.warning:
        return Colors.yellow;
    }
  }

  static Color _getTextColor(SnackbarStatus status) {
    switch (status) {
      case SnackbarStatus.success:
      case SnackbarStatus.warning:
        return Colors.black;
      case SnackbarStatus.error:
      case SnackbarStatus.info:
        return Colors.white;
    }
  }

  static void showSnackbar({
    required String message,
    Duration duration = const Duration(seconds: 3),
    required SnackbarStatus status,
  }) {
    final overlay = NavigationalUtil.rootState?.overlay;
    if (overlay == null) return;

    showOverlayNotification((context) {
      return SafeArea(
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dy < -5) OverlaySupportEntry.of(context)?.dismiss();
          },
          child: Card(
            color: _getBgColor(status),
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
            margin: EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        message,
                        style: TextStyle(color: _getTextColor(status), fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      OverlaySupportEntry.of(context)?.dismiss();
                    },
                    child: Icon(Icons.close, color: _getTextColor(status)),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }, duration: duration);
  }
}
