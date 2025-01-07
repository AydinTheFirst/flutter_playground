import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/counter.dart';
import 'package:flutter_playground/screens/not_found.dart';
import 'package:fquery/fquery.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

final QueryClient queryClient = QueryClient(
  defaultQueryOptions: DefaultQueryOptions(),
);

void main() {
  runApp(QueryClientProvider(
    queryClient: queryClient,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Çamlıca Camii PTS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: "/",
      unknownRoute: GetPage(name: "/notfound", page: () => NotFoundScreen()),
      getPages: [GetPage(name: "/", page: () => CounterScreen())],
    );
  }
}
