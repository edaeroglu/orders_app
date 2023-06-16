import 'package:deneme/product/injector/injector.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  configureDependencies();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp.router(
        routerConfig: _appRouter.config(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
