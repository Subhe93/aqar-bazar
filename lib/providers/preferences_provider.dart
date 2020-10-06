
import 'package:aqar_bazar/Network/Api.dart';
import 'package:aqar_bazar/screens/settings/preferences_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PreferencesProvider with ChangeNotifier{

  bool loading = false;

  Api api = new Api();
  PreferencesResponse preferencesResponse = PreferencesResponse();
  List<Language> languagesList = [];
  List<Currency> currencyList = [];
  List<Country> countryList = [];


  Future<PreferencesResponse> getPreferences() async {
    setLoading(true);
    try {
      Response response = await api.getPreferences();


      languagesList.clear();
      currencyList.clear();
      countryList.clear();


      if(response != null){
        preferencesResponse = preferencesResponseFromJson(response.body);

        for (int i = 0; i < preferencesResponse.languages.length; i++) {
          languagesList.add(Language(
              name: preferencesResponse.languages[i][0], id: preferencesResponse.languages[i][1]));
        }

        for (int i = 0; i < preferencesResponse.countries.length; i++) {
          countryList.add(Country(
              name: preferencesResponse.countries[i][0], id: preferencesResponse.countries[i][1]));
        }


        for (int i = 0; i < preferencesResponse.currencies.length; i++) {
          currencyList.add(Currency(
              name: preferencesResponse.currencies[i][0], id: preferencesResponse.currencies[i][1]));
        }

        setLoading(false);
        return preferencesResponse;
      }

      if (preferencesResponse == null) {
        setLoading(false);

        return preferencesResponse;
      }
      setLoading(false);
      return preferencesResponse;
    } catch (e) {
      setLoading(false);
      print("provider /*****************/*/*/*/**" + e.toString());
      return null;
    }
  }

  void setLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  bool isLoading() {
    return loading;
  }

//   Api api = new Api();
//
//   PreferencesResponse preferencesResponse = PreferencesResponse();
//   List<Country> countriesList =[];
//   List<Language> languagesList =[];
//   List<Currency> currencyList = [];
//
// List<String> test = [];
//
//
//   Future<PreferencesResponse> getPreferences() async{
//     currencyList.clear();
//     countriesList.clear();
//     languagesList.clear();
//     try{
//
//       Response response =await api.getPreferences();
//
//       if(response !=null){
//         preferencesResponse = preferencesResponseFromJson(response.body);
//
//         print("888888888888"+preferencesResponse.currencies[0][0]);
//         test.add(preferencesResponse.currencies[0][0]);
//
//         for(int i =0; i<preferencesResponse.languages.length ; i++){
//           languagesList.add(Language(name: preferencesResponse.languages[i][0],id: preferencesResponse.languages[i][1]));
//         }
//         for(int i =0; i<preferencesResponse.countries.length ; i++){
//           countriesList.add(Country(name: preferencesResponse.countries[i][0],id: preferencesResponse.countries[i][1]));
//         }
//         for(int i =0; i<preferencesResponse.currencies.length ; i++){
//           currencyList.add(Currency(name: preferencesResponse.currencies[i][0],id: preferencesResponse.currencies[i][1]));
//         }
//
//         notifyListeners();
//         return preferencesResponse;
//       }
//
//       if (preferencesResponse == null) {
//         notifyListeners();
//
//         return preferencesResponse;
//       }
//       notifyListeners();
//       return preferencesResponse;
//
//
//
//
//
//
//     }catch(e){
//       print("preferences Error"+e.toString());
//       return null;
//     }
//   }


}