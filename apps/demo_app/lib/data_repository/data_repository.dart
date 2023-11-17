import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_models/data_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data_repository_state.dart';

///
class DataRepository extends Cubit<DataRepositoryState> {
  ///
  DataRepository() : super(const DataRepositoryState.success()) {
    demoDataStream = FirebaseFirestore.instance
        .collection('demoData')
        .doc('DONOAWzQYiuHqeHjo8eJ')
        .snapshots()
        .asBroadcastStream();

    demoDataStream.listen((final data) {
      final rawData = data.data();
      if (rawData != null) {
        final firebaseData = FirebaseDataDto.fromJson(rawData);
        emit(
          state.copyWith(
            barChartData: firebaseData.barChartData,
            lineChartData: firebaseData.lineChartData,
            pieChartData: firebaseData.pieChartData,
          ),
        );
      }
    });
  }

  // ignore: public_member_api_docs
  late Stream<DocumentSnapshot<Map<String, dynamic>>> demoDataStream;
}
