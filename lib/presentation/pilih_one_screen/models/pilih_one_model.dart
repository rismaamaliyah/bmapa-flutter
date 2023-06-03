import 'package:get/get.dart';
import 'pilih_one_item_model.dart';

/// This class defines the variables used in the [pilih_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PilihOneModel {
  Rx<List<PilihOneItemModel>> pilihOneItemList =
      Rx(List.generate(9, (index) => PilihOneItemModel()));
}
