<<<<<<< HEAD
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/filter_screen/models/filter_model.dart';
import 'package:immo_scanner/widgets/custom_bottom_bar.dart';
=======
import 'package:immo_scanner/core/app_export.dart';import 'package:immo_scanner/presentation/filter_screen/models/filter_model.dart';class FilterController extends GetxController {Rx<FilterModel> filterModelObj = FilterModel().obs;
>>>>>>> 4041046 (fix ios)

class FilterController extends GetxController {
  Rx<FilterModel> filterModelObj = FilterModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

<<<<<<< HEAD
  SelectionPopupModel? selectedDropDownValue4;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    filterModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    filterModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    filterModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    filterModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    selectedDropDownValue2 = value as SelectionPopupModel;
    filterModelObj.value.dropdownItemList2.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    filterModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    selectedDropDownValue3 = value as SelectionPopupModel;
    filterModelObj.value.dropdownItemList3.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    filterModelObj.value.dropdownItemList3.refresh();
  }

  onSelected4(dynamic value) {
    selectedDropDownValue4 = value as SelectionPopupModel;
    filterModelObj.value.dropdownItemList4.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    filterModelObj.value.dropdownItemList4.refresh();
  }
}
=======
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; for (var element in filterModelObj.value.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} filterModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { selectedDropDownValue1 = value as SelectionPopupModel; for (var element in filterModelObj.value.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} filterModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { selectedDropDownValue2 = value as SelectionPopupModel; for (var element in filterModelObj.value.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} filterModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { selectedDropDownValue3 = value as SelectionPopupModel; for (var element in filterModelObj.value.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} filterModelObj.value.dropdownItemList3.refresh(); } 
onSelected4(dynamic value) { selectedDropDownValue4 = value as SelectionPopupModel; for (var element in filterModelObj.value.dropdownItemList4) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} filterModelObj.value.dropdownItemList4.refresh(); } 
 }
>>>>>>> 4041046 (fix ios)
