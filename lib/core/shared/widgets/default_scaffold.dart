import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connectivity_monitor/connectivity_monitor.dart';

/// A flexible and reusable scaffold widget that serves as the base layout for app screens.
///
/// `CoreScaffold` simplifies building consistent layouts across your app,
/// supporting scrollable content, optional app bar, drawers, bottom navigation,
/// safe area handling, pull-to-refresh, and connectivity monitoring.
///
/// ## Features:
/// - Custom app bar with title and actions
/// - Optional drawer, endDrawer, bottomNavigationBar, and floatingActionButton
/// - Scrollable content toggle
/// - SafeArea wrapping
/// - Pull-to-refresh support
/// - Lifecycle hooks via [onInitState] and [onDispose]
/// - Internet connection monitoring using [ConnectivityMonitor]
///
/// ## Usage:
/// ```dart
/// CoreScaffold(
///   appBarTitle: "Dashboard",
///   scrollable: true,
///   enableRefresh: true,
///   onRefresh: () async {
///     // Refresh logic here
///   },
///   body: YourContentWidget(),
/// );
/// ```
class DefaultScaffold extends StatefulWidget {
  final String? appBarTitle;
  final List<Widget>? actions;
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final BottomNavigationBar? bottomNavigationBar;
  final Widget? drawer;
  final Widget? endDrawer;
  final bool? safeArea;
  final bool? showBackButton;
  final bool? scrollable;
  final bool? enableRefresh;
  final Future<void> Function()? onRefresh;
  final VoidCallback? onInitState;
  final VoidCallback? onDispose;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Widget? customDisconnectedWidget;
  final bool? requiresConnection;
  final bool? useDialogAsConnectivityIndicator;
  final bool? useWidgetAsConnectivityIndicator;
  final VoidCallback? onDisconnected;
  final VoidCallback? onConnected;
  final Widget? customDisconnectedDialog;

  const DefaultScaffold({
    super.key,
    this.appBarTitle,
    this.actions,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.drawer,
    this.endDrawer,
    this.safeArea,
    this.showBackButton,
    this.scrollable,
    this.enableRefresh,
    this.onRefresh,
    this.onInitState,
    this.onDispose,
    this.backgroundColor,
    this.padding,
    this.customDisconnectedWidget,
    this.requiresConnection,
    this.useDialogAsConnectivityIndicator,
    this.useWidgetAsConnectivityIndicator,
    this.onDisconnected,
    this.onConnected,
    this.customDisconnectedDialog,
  });

  @override
  State<DefaultScaffold> createState() => _DefaultScaffoldState();
}

class _DefaultScaffoldState extends State<DefaultScaffold> {
  @override
  void initState() {
    super.initState();
    widget.onInitState?.call();
  }

  @override
  void dispose() {
    widget.onDispose?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final safeArea = widget.safeArea ?? true;
    final scrollable = widget.scrollable ?? true;
    final enableRefresh = widget.enableRefresh ?? false;
    final backgroundColor = widget.backgroundColor ?? Colors.white;
    final padding = widget.padding ?? EdgeInsets.zero;

    final requiresConnection = widget.requiresConnection ?? false;
    final useDialog = widget.useDialogAsConnectivityIndicator ?? false;
    final useWidget = widget.useWidgetAsConnectivityIndicator ?? false;
    final disconnectedWidget = widget.customDisconnectedWidget;
    final disconnectedDialog = widget.customDisconnectedDialog;
    final onDisconnected = widget.onDisconnected;
    final onConnected = widget.onConnected;

    Widget content = widget.body ?? const SizedBox.shrink();

    // Scrollable content wrapper with responsive padding
    if (scrollable) {
      content = SingleChildScrollView(padding: padding, child: content);
    } else if (padding != EdgeInsets.zero) {
      content = Padding(padding: padding, child: content);
    }

    // Pull-to-refresh support
    if (enableRefresh && widget.onRefresh != null) {
      content = RefreshIndicator(
        onRefresh: widget.onRefresh!,
        child:
            scrollable
                ? content
                : SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.9,
                    ),
                    child: content,
                  ),
                ),
      );
    }

    // Safe area wrapping
    if (safeArea) {
      content = SafeArea(child: content);
    }

    // Build AppBar with responsive design if title is provided
    PreferredSizeWidget? responsiveAppBar = widget.appBar;
    if (widget.appBarTitle != null && widget.appBar == null) {
      responsiveAppBar = AppBar(
        title: Text(
          widget.appBarTitle!,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        actions: widget.actions,
        leading:
            widget.showBackButton == true
                ? IconButton(
                  icon: Icon(Icons.arrow_back_ios_new, size: 20.w),
                  onPressed: () => Navigator.pop(context),
                )
                : null,
      );
    }

    // Scaffold widget construction
    final scaffold = Scaffold(
      appBar: responsiveAppBar,
      body: content,
      floatingActionButton: widget.floatingActionButton,
      bottomNavigationBar: widget.bottomNavigationBar,
      drawer: widget.drawer,
      endDrawer: widget.endDrawer,
      backgroundColor: backgroundColor,
    );

    // Wrap in connectivity monitor if enabled
    return ConnectivityMonitor(
      requiresConnection: requiresConnection,
      useWidgetAsConnectivityIndicator: useWidget,
      useDialogAsConnectivityIndicator: useDialog,
      customDisconnectedWidget: disconnectedWidget,
      customDialog: disconnectedDialog,
      onDisconnected: onDisconnected,
      onConnected: onConnected,
      child: scaffold,
    );
  }
}
