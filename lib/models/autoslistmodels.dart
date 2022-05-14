import 'package:cars_reviewer/models/basemodel.dart';
import 'package:cars_reviewer/services/autostate.dart';
import 'package:cars_reviewer/models/automodel.dart';

class AutosModel extends BaseModel {
  List<AutoModel> autos = [];
  AutoModel autoSelected = AutoModel(0, "", "", "", "", 0,"");
  AutosModel() {
    setListState(AutosListState.init);
    autos.add(AutoModel(
        2023, "Chevrolet", "Onix", "\$1.000.000", "Un auto de Chevrolet", 0,"https://th.bing.com/th/id/OIP.sSF7cRac5eTE4q9vhsfbkwHaEK?pid=ImgDet&rs=1"));
    autos.add(AutoModel(
        2022, "Toyota", "Corolla", "\$1.000.000", "Un auto de Toyota", 0,"https://th.bing.com/th/id/OIP.bLJ7V3N-hPBoDVrDIFOAwQHaDR?pid=ImgDet&rs=1"));
    autos.add(AutoModel(
        2019, "Mazda", "Mazda 3", "\$1.000.000", "Un auto de Mazda", 0,"https://mazdacol.vteximg.com.br/arquivos/ids/155442-1200-900/Mazda3_BPLK_BDCJLAB_46V_BY3_EXT_MAIN_TOURING_MT.jpg?v=637009580877570000"));
    autos.add(AutoModel(
        2021, "Renault", "Duster", "\$1.000.000", "Un auto de Renault", 0,"https://th.bing.com/th/id/OIP.EN1NO9DA72ohMtxvv97NtwHaHa?pid=ImgDet&rs=1"));
    autos.add(AutoModel(
        2020, "Nissan", "Versa", "\$1.000.000", "Un auto de Nissan", 0,"https://i0.wp.com/www.deagenciapanama.com/wp-content/uploads/2019/10/Nissan-versa-icon.jpg?fit=1600%2C900&ssl=1"));
  }
  List<AutoModel> get getAutos => autos;
  AutoModel get getAutoSelected{
    notifyListeners();
    return autoSelected;
    
  }
  setAutoSelected(AutoModel value){
    autoSelected = value;
    notifyListeners();
  }
}
