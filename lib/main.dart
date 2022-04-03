import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nbbl/currencyListScreen.dart';

import 'bloc/network_bloc.dart';
import 'bloc/network_event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlocProvider(
          create: (context) => NetworkBloc()..add(ListenConnection()),
          child: CurrencyScreen(),
          
        ),
      ),
    );
  }
}
  
