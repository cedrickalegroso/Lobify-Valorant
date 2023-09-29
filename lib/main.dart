import 'package:flutter/material.dart';
import 'package:lobify/Screens/auth.dart';
import 'package:lobify/Screens/dashboard.dart';
import 'package:lobify/services/routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://svnmzshitbqthhglkfjz.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InN2bm16c2hpdGJxdGhoZ2xrZmp6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTMyMDc0OTEsImV4cCI6MjAwODc4MzQ5MX0.2Y6IzM6B4nWJHu2ZqaM_YX1XmglQfIjsedMoLh5zc3k',
  );

  runApp(const LobifyMain());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.   backgroundColor: const Color(0xff0A0A0A),
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       color: const Color(0xff0A0A0A),
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       onGenerateRoute: RouteGenerator.generateRoute,
//       home: const LobifyMain(),
//     );
//   }
// }

class LobifyMain extends StatefulWidget {
  const LobifyMain({
    Key? key,
  }) : super(key: key);

  @override
  _LobifyMainState createState() => _LobifyMainState();
}

class _LobifyMainState extends State<LobifyMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Get a reference your Supabase client
    final supabase = Supabase.instance.client;

    final User? user = supabase.auth.currentUser;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: const Color(0xff0A0A0A),
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      home: user == null ? const AuthPage() : const DashBoard(),
    );
  }
}
