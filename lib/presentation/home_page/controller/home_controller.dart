import 'package:asset_manager/api.dart';
import 'package:bookmarks/api.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/data/apiClient/asset_manager_api_client.dart';
import 'package:immo_scanner/data/models/me/get_me_resp.dart';
import 'package:immo_scanner/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController group34551Controller = TextEditingController();

  Rx<HomeModel> homeModelObj;

  SelectionPopupModel? selectedDropDownValue;

  Profile getMeResp = Profile();

  RxList<Asset> assetList = <Asset>[].obs;
  RxInt count = 0.obs;

  bool dataCreated = false;

  @override
  Future<void> onReady() async {
    Get.find<PrefUtils>().initAndGetAddress();
    super.onReady();
    // _listAssets();
  }

  @override
  void onClose() {
    super.onClose();
    group34551Controller.dispose();
    print("onClose");
  }

  // onSelected(dynamic value) {
  //   selectedDropDownValue = value as SelectionPopupModel;
  //   homeModelObj.value.dropdownItemList.forEach((element) {
  //     element.isSelected = false;
  //     if (element.id == value.id) {
  //       element.isSelected = true;
  //     }
  //   });
  //   homeModelObj.value.dropdownItemList.refresh();
  // }

  void _listAssets() async {
    print("listAssets");
    print(await Get.find<AssetManagerClient>().listAsset());
    AssetPagination? assetPagination =
        await Get.find<AssetManagerClient>().listAsset();
    for (var element in assetPagination!.data) {
      assetList.add(element);
    }
    count.value = assetPagination.totalRows ?? 0;
  }

  createDefaultData() {
    if (!dataCreated) {
      assetList.value.add(Asset(
        id: "4",
        title: "Maison 6 pièces 180 m²",
        description: "Maison avec 5 chambres, jardin de 400m²",
        area: 180,
        GES: "D",
        DPE: "D",
        price: 350000,
        roomCount: 6,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_img_418x327_2.png?raw=true",
        annonceId: "4",
        city: "Bordeaux",
        postalCode: "33000",
        department: "Gironde",
        ownerName: "Paul Durand",
        ownerSiren: "456789123",
        ownerStoreId: "49687",
        phone: "0928374651",
        realEstateType: "Maison",
        region: "Nouvelle-Aquitaine",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "D",
            classeNergie: "D",
            nombreDeChambres: "6",
            surface: "180",
            honoraires: "3%",
            tageDuBien: "0",
            typeDeBien: "Maison"),
      ));
      assetList.value.add(Asset(
        id: "5",
        title: "Studio 1 pièce 30 m²",
        description: "Studio récemment rénové, proche des commerces",
        area: 30,
        GES: "E",
        DPE: "E",
        price: 100000,
        roomCount: 1,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/studio_1.jpg?raw=true",
        annonceId: "5",
        city: "Toulouse",
        postalCode: "31000",
        department: "Haute-Garonne",
        ownerName: "Sophie Mercier",
        ownerSiren: "567891234",
        ownerStoreId: "49688",
        phone: "0483927561",
        realEstateType: "Studio",
        region: "Occitanie",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "E",
            classeNergie: "E",
            nombreDeChambres: "1",
            surface: "30",
            honoraires: "4%",
            tageDuBien: "3",
            typeDeBien: "Studio"),
      ));
      assetList.value.add(Asset(
        id: "6",
        title: "Loft 4 pièces 120 m²",
        description: "Loft moderne en plein coeur de Marseille",
        area: 120,
        GES: "A",
        DPE: "A",
        price: 620000,
        roomCount: 4,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/studio_2.jpg?raw=true",
        annonceId: "6",
        city: "Marseille",
        postalCode: "13000",
        department: "Bouches-du-Rhône",
        ownerName: "Marc Delon",
        ownerSiren: "678912345",
        ownerStoreId: "49689",
        phone: "0658392714",
        realEstateType: "Loft",
        region: "Provence-Alpes-Côte d'Azur",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "A",
            classeNergie: "A",
            nombreDeChambres: "4",
            surface: "120",
            honoraires: "5%",
            tageDuBien: "2",
            typeDeBien: "Loft"),
      ));
      assetList.value.add(Asset(
        id: "7",
        title: "Duplex 5 pièces 110 m²",
        description: "Duplex charmant avec vue sur le parc à Nantes",
        area: 110,
        GES: "B",
        DPE: "B",
        price: 450000,
        roomCount: 5,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/maison_2.jpg?raw=true",
        annonceId: "7",
        city: "Nantes",
        postalCode: "44000",
        department: "Loire-Atlantique",
        ownerName: "Isabelle Lemoine",
        ownerSiren: "789123456",
        ownerStoreId: "49690",
        phone: "0738592614",
        realEstateType: "Duplex",
        region: "Pays de la Loire",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "B",
            classeNergie: "B",
            nombreDeChambres: "5",
            surface: "110",
            honoraires: "4%",
            tageDuBien: "4",
            typeDeBien: "Duplex"),
      ));
      assetList.value.add(Asset(
        id: "8",
        title: "Maison 4 pièces 100 m²",
        description: "Maison avec 3 chambres et un grand jardin à Strasbourg",
        area: 100,
        GES: "C",
        DPE: "B",
        price: 320000,
        roomCount: 4,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/maison_1.jpg?raw=true",
        annonceId: "8",
        city: "Strasbourg",
        postalCode: "67000",
        department: "Bas-Rhin",
        ownerName: "François Dubois",
        ownerSiren: "891234567",
        ownerStoreId: "49691",
        phone: "0748392615",
        realEstateType: "Maison",
        region: "Grand Est",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "C",
            classeNergie: "B",
            nombreDeChambres: "4",
            surface: "100",
            honoraires: "4%",
            tageDuBien: "0",
            typeDeBien: "Maison"),
      ));
      assetList.value.add(Asset(
        id: "9",
        title: "Appartement T3 70 m²",
        description: "T3 chambres lumineux",
        area: 70,
        GES: "A",
        DPE: "A",
        price: 240000,
        roomCount: 3,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/studio_1.jpg?raw=true",
        annonceId: "9",
        city: "Montpellier",
        postalCode: "34000",
        department: "Hérault",
        ownerName: "Nathalie Durand",
        ownerSiren: "912345678",
        ownerStoreId: "49692",
        phone: "0758392616",
        realEstateType: "Appartement",
        region: "Occitanie",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "A",
            classeNergie: "A",
            nombreDeChambres: "3",
            surface: "70",
            honoraires: "5%",
            tageDuBien: "3",
            typeDeBien: "Appartement"),
      ));
      assetList.value.add(Asset(
        id: "1",
        title: "Maison 7 pièces 205 m²",
        description: "propriété 6 chambres, piscine 6000m² terrain",
        area: 205,
        GES: "B",
        DPE: "B",
        price: 735000,
        roomCount: 7,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_img_180x327_2.png?raw=true",
        annonceId: "1",
        city: "Paris",
        postalCode: "75000",
        department: "Paris",
        ownerName: "Jean Dupont",
        ownerSiren: "123456789",
        ownerStoreId: "49684",
        phone: "0123456789",
        realEstateType: "Maison",
        region: "Ile de France",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "B",
            classeNergie: "B",
            nombreDeChambres: "7",
            surface: "205",
            honoraires: "4%",
            tageDuBien: "0",
            typeDeBien: "Maison"),
      ));
      assetList.value.add(Asset(
        id: "2",
        title: "Villa 5 pièces 150 m²",
        description: "Villa avec 4 chambres, jardin 5000m²",
        area: 150,
        GES: "A",
        DPE: "A",
        price: 950000,
        roomCount: 5,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_image_343x343_1.png?raw=true",
        annonceId: "2",
        city: "Nice",
        postalCode: "06000",
        department: "Alpes-Maritimes",
        ownerName: "Pierre Martin",
        ownerSiren: "234567891",
        ownerStoreId: "49685",
        phone: "0987654321",
        realEstateType: "Villa",
        region: "Provence-Alpes-Côte d'Azur",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "A",
            classeNergie: "A",
            nombreDeChambres: "5",
            surface: "150",
            honoraires: "3%",
            tageDuBien: "0",
            typeDeBien: "Villa"),
      ));
    }
  }

  void onTapFav(Asset asset) {
    print("Add to fav : " + asset.id.toString());
  }
}
