import 'package:digicoop/api/services.dart';
import 'package:digicoop/model/regionModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final region = AutoDisposeStateNotifierProvider<regionClass, regionModel>(
    (ref) => regionClass());

class regionClass extends StateNotifier<regionModel> {
  regionClass() : super(regionModel());

  //List<Data> get reviewList => state.data ?? [];

  regionModel get region => state;

  /* getcomplatedTask() async {
    final result = await ServiceHost.getCompletedTrip();
    state = result;
  }*/

  Future<void> getRegion() async {
    final result = await ServiceHost.getRegion();
    if (result.statusCode == 200) {
      state = regionModel.fromJson(result.data);
      //final getId = completedTripModel.fromJson(result.data);
    }
  }
}
