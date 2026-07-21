import 'package:flutter/material.dart';
import 'package:medical_diagnostic_app1/features/home/models/notification_model.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  // Local mock list until the notifications API is wired up.
  late List<NotificationModel> _notifications = [
    NotificationModel(
      id: "n1",
      type: "report",
      title: "Report ready",
      message: "Your diagnostic report for session sess_8f3a21 is ready.",
      isRead: false,
      readAt: null,
    ),
    NotificationModel(
      id: "n2",
      type: "reminder",
      title: "Follow-up reminder",
      message: "Don't forget to complete your follow-up questions.",
      isRead: false,
      readAt: null,
    ),
    NotificationModel(
      id: "n3",
      type: "system",
      title: "Welcome to Vitalia",
      message: "Thanks for joining. Start your first assessment anytime.",
      isRead: true,
      readAt: "2026-07-15 10:00",
    ),
    NotificationModel(
      id: "n4",
      type: "payment",
      title: "Payment successful",
      message: "Your payment for the full report was received.",
      isRead: true,
      readAt: "2026-07-12 16:20",
    ),
  ];

  bool _isRead(NotificationModel n) => n.isRead == true;

  int get _unreadCount => _notifications.where((n) => !_isRead(n)).length;

  void _setRead(String? id, bool read) {
    setState(() {
      _notifications = _notifications
          .map(
            (n) => n.id == id
                ? n.copyWith(
                    isRead: read ? true : false,
                    readAt: read ? DateTime.now().toString() : null,
                  )
                : n,
          )
          .toList();
    });
  }

  void _markAllAsRead() {
    setState(() {
      _notifications = _notifications
          .map(
            (n) => n.copyWith(
              isRead: true,
              readAt: n.readAt ?? DateTime.now().toString(),
            ),
          )
          .toList();
    });
  }

  void _delete(String? id) {
    setState(() {
      _notifications = _notifications.where((n) => n.id != id).toList();
    });
  }

  Future<void> _confirmDeleteAll() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(S.of(context).deleteAllNotifications),
        content: Text(S.of(context).deleteAllNotificationsConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(S.of(context).cancelBtn),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(S.of(context).deleteAllNotifications),
          ),
        ],
      ),
    );
    if (confirmed == true) {
      setState(() => _notifications = []);
    }
  }

  IconData _iconForType(String? type) {
    switch (type) {
      case "report":
        return Icons.description_outlined;
      case "reminder":
        return Icons.alarm_outlined;
      case "payment":
        return Icons.payments_outlined;
      case "system":
      default:
        return Icons.notifications_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        title: Text(S.of(context).notificationsTitle),
        actions: [
          if (_notifications.isNotEmpty) ...[
            IconButton(
              tooltip: S.of(context).markAllAsRead,
              icon: const Icon(Icons.done_all),
              onPressed: _unreadCount == 0 ? null : _markAllAsRead,
            ),
            IconButton(
              tooltip: S.of(context).deleteAllNotifications,
              icon: const Icon(Icons.delete_sweep_outlined),
              onPressed: _confirmDeleteAll,
            ),
          ],
        ],
      ),
      body: SafeArea(
        child: _notifications.isEmpty
            ? Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.notifications_off_outlined,
                      size: 56,
                      color: colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      S.of(context).noNotifications,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              )
            : ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: _notifications.length,
                separatorBuilder: (_, _) => Divider(
                  height: 1,
                  indent: 72,
                  color: colorScheme.outline.withValues(alpha: 0.12),
                ),
                itemBuilder: (context, index) {
                  final n = _notifications[index];
                  final read = _isRead(n);
                  return Dismissible(
                    key: ValueKey(n.id),
                    background: Container(
                      color: theme.colorScheme.errorContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.delete_outline,
                            color: colorScheme.onError,
                          ),
                          Icon(
                            Icons.delete_outline,
                            color: colorScheme.onError,
                          ),
                        ],
                      ),
                    ),
                    onDismissed: (_) => _delete(n.id),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      leading: CircleAvatar(
                        backgroundColor: read
                            ? colorScheme.surfaceContainerHighest
                            : colorScheme.primaryContainer,
                        child: Icon(
                          _iconForType(n.type),
                          color: read
                              ? colorScheme.onSurfaceVariant
                              : colorScheme.primary,
                        ),
                      ),
                      title: Text(
                        n.title ?? "",
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: read ? FontWeight.w500 : FontWeight.bold,
                          color: colorScheme.onSurface,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          n.message ?? "",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (!read)
                            Container(
                              width: 10,
                              height: 10,
                              margin: const EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                color: colorScheme.primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                          PopupMenuButton<String>(
                            icon: const Icon(Icons.more_vert),
                            onSelected: (value) {
                              switch (value) {
                                case "read":
                                  _setRead(n.id, true);
                                  break;
                                case "unread":
                                  _setRead(n.id, false);
                                  break;
                                case "delete":
                                  _delete(n.id);
                                  break;
                              }
                            },
                            itemBuilder: (context) => [
                              if (!read)
                                PopupMenuItem(
                                  value: "read",
                                  child: Text(S.of(context).markAsRead),
                                ),
                              if (read)
                                PopupMenuItem(
                                  value: "unread",
                                  child: Text(S.of(context).markAsUnread),
                                ),
                              PopupMenuItem(
                                value: "delete",
                                child: Text(S.of(context).deleteNotification),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
