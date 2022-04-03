import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nbbl/ui/cardui.dart';

import 'bloc/network_bloc.dart';
import 'bloc/network_state.dart';
import 'data/datavalue.dart';
import 'service/settings.dart';

class CurrencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Column(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
      child: BlocBuilder<NetworkBloc, NetworkState>(
        builder: (context, state) {
          if (state is ConnectionFailure) return const Text("No Internet Connection");
          if (state is ConnectionSuccess) {
            return loadlist();
          } else {
            return const Text("");
          }
        },
      ),
     ),
          ),
        ),
      ],
    );
  }
}