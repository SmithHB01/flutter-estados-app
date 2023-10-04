import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados_app/bloc/user/user_bloc.dart';
import 'package:estados_app/pages/pages.dart';

void main() => runApp( const MyApp());
 
class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ( _ ) => UserBloc() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'pagina1',
        routes: {
          'pagina1': ( _ ) => const Pagina1Page(),
          'pagina2': ( _ ) => const Pagina2Page(),
        },
      ),
    );
  }
}