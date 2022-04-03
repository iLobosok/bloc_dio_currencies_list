import 'package:flutter/material.dart';

import '../data/datavalue.dart';
import '../service/settings.dart';

Widget cardUI({
  required String nameCur,
  required double priceCur,
}) {
  return Card(
    color: Colors.white,
    child: Center(
      child: Row(
        children: <Widget>[
          Text(nameCur),
          const Spacer(),
          Text(priceCur.toString()),
        ],
      ),
    ),
  );
}

 Widget loadlist() {
    return FutureBuilder<List<Datavalue>>(
        future: fetchProcessors1(),
        //initialData: InitialData,
        builder: (context, data) {
            return ListView.builder(
              itemCount: data.data!.length,
              itemBuilder: (context, index) {
                return Center(
                    child: cardUI(
                  nameCur: data.data![index].curName,
                  priceCur: data.data![index].curOfficialRate,
                ));
              },
            );
          } 
    );
 }