import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/scheduler.dart';

abstract class BaseScaffold<T extends StateStreamableSource<Object?>>
    extends StatefulWidget {
  const BaseScaffold({
    Key? key,
    required this.blocClass,
  }) : super(key: key);

  @protected
  final String? tag = null;

  final T blocClass;

  @protected
  AppBar? appBarScaffold(BuildContext context, Size sizePage) {
    return null;
  }

  @protected
  Future<bool> onBackPressed(BuildContext context) async {
    return true;
  }

  @protected
  Widget? bodyScaffold(BuildContext context, Size sizePage);

  @protected
  void initializeDependency() {}

  @protected
  void didChangeDependency(BuildContext context) {}

  @protected
  void didUpdateWidget(BuildContext context) {}

  @protected
  void processAfterBuildUI(BuildContext context) {}

  @protected
  Widget? bottomNavigationScaffold(BuildContext context, Size sizePage) {
    return null;
  }

  @protected
  final bool wantKeepAlive = false;

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold>
    with WidgetsBindingObserver, AutomaticKeepAliveClientMixin {
  // Statefull Standart Lifecycle
  @override
  void initState() {
    super.initState();
    widget.initializeDependency();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.processAfterBuildUI(context);
    });
    // SchedulerBinding.instance?.addPostFrameCallback((_) {
    //   print("SchedulerBinding");
    // });
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("did change dependencies");
  }

  @override
  void didUpdateWidget(covariant BaseScaffold oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("did update widget");
  }

  @override
  void deactivate() {
    debugPrint("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    debugPrint("dispose");
    super.dispose();
  }

  // Widget Observer Lifecycle
  @override
  void didChangeAccessibilityFeatures() {
    debugPrint("did change accesibility features");
    super.didChangeAccessibilityFeatures();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint("did change app lifecycle state : $state");
    super.didChangeAppLifecycleState(state);
  }

  @override
  void didChangeLocales(List<Locale>? locales) {
    debugPrint("did change locales : $locales");
    super.didChangeLocales(locales);
  }

  @override
  void didChangeMetrics() {
    debugPrint("did change metrics");
    super.didChangeMetrics();
  }

  @override
  void didChangePlatformBrightness() {
    debugPrint("did change platform brightness");
    super.didChangePlatformBrightness();
  }

  @override
  Future<bool> didPopRoute() {
    debugPrint("did pop route");
    return super.didPopRoute();
  }

  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) {
    debugPrint("did push route information : $routeInformation");
    return super.didPushRouteInformation(routeInformation);
  }

  @override
  Future<bool> didPushRoute(String route) {
    debugPrint("did push route : $route");
    return super.didPushRoute(route);
  }

  @override
  void didChangeTextScaleFactor() {
    debugPrint("did change text scale factor");
    super.didChangeTextScaleFactor();
  }

  @override
  void didHaveMemoryPressure() {
    debugPrint("did have memory pressure");
    super.didHaveMemoryPressure();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build");
    debugPrint("want to keep alive ${widget.wantKeepAlive}");

    if (widget.wantKeepAlive) super.build(context);
    final Size sizePage = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () => widget.onBackPressed(context),
      child: BlocProvider(
        create: (context) => widget.blocClass,
        child: Scaffold(
          body: widget.bodyScaffold(context, sizePage),
          appBar: widget.appBarScaffold(context, sizePage),
          bottomNavigationBar:
              widget.bottomNavigationScaffold(context, sizePage),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => widget.wantKeepAlive;
}
