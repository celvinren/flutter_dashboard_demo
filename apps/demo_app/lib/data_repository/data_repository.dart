import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_models/data_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data_repository_state.dart';

///
class DataRepository extends Cubit<DataRepositoryState> {
  ///
  DataRepository() : super(const DataRepositoryState.success()) {
    _demoDataStream = FirebaseFirestore.instance
        .collection('demoData')
        .doc('DONOAWzQYiuHqeHjo8eJ')
        .snapshots()
        .asBroadcastStream();

    _demoDataStreamSubscription = _demoDataStream?.listen((final data) {
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

  StreamSubscription<DocumentSnapshot<Map<String, dynamic>>>?
      _demoDataStreamSubscription;
  Stream<DocumentSnapshot<Map<String, dynamic>>>? _demoDataStream;

  @override
  Future<void> close() {
    _demoDataStreamSubscription?.cancel();

    return super.close();
  }
}
