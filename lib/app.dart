import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:digicoop/routes/route_generator.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    // ref.read(fcmProvider).init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final goRoute = ref.watch(goRouter);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          //key: ContextService.contextService,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              toolbarTextStyle: TextTheme(
                headline6:
                    TextStyle(color: Colors.white), // Set text color to white
              ).bodyText2,
              titleTextStyle: TextTheme(
                headline6:
                    TextStyle(color: Colors.white), // Set text color to white
              ).headline6,
            ),
          ),
          debugShowCheckedModeBanner: false,
          routeInformationParser: goRoute.routeInformationParser,
          routerDelegate: goRoute.routerDelegate,
          routeInformationProvider: goRoute.routeInformationProvider,
        );
      },
    );
  }
}
