import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/user_provider.dart';
import 'screens/user_form_screen.dart' as form_screen;
import 'screens/user_list_screen.dart' as list_screen;

Future<void> main() async {
  runApp(const MyApp()); // Removed 'const' from here
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        title: 'Project Name',
        initialRoute: '/user-form',
        routes: {
          '/user-form': (_) => form_screen.UserFormScreen(),
          '/user-list': (_) => const list_screen.UserListScreen(),
        },
      ),
    );
  }
}
