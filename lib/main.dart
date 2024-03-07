import 'app_src.dart';

void main() {
  _init();
}

void _init() async {
  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({
    Key? key,
  }) : super(key: key);
  @override
  ApplicationState createState() => ApplicationState();
}

class ApplicationState extends State<Application> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// Application
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // translations: Translator(),
      locale: const Locale('vi', 'VN'),
      localizationsDelegates: const [],
      //supportedLocales: const [Locale('vi'), Locale('en')],
      builder: (context, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: child!,
          ),
        );
      },
      debugShowCheckedModeBanner: false,
      title: AppStr.appName,
      getPages: RoutePage.route,
      theme: ThemeData(),
      initialRoute: RoutesApp.routeInit,
      navigatorObservers: [GetBack((_) {}, Get.routing)],
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class GetBack extends GetObserver {
  @override
  // ignore: overridden_fields
  final Function(Routing?)? routing;
  // ignore: unused_field
  final Routing? _routeSend;

  GetBack([this.routing, this._routeSend]) : super(routing, _routeSend);

  @override
  Future<void> didPop(Route route, Route? previousRoute) async {
    // KeyBoard.hide();
    // await 300.milliseconds.delay();
    super.didPop(route, previousRoute);
  }
}
