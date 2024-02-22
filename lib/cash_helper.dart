import 'package:shared_preferences/shared_preferences.dart';
import 'enums.dart';

class CashHelper{

  static SharedPreferences? preferences;

  static Future<void>init()async{
    preferences =await SharedPreferences.getInstance();
  }

// id "1"
  static void putString ({required SharedKeys key ,required String value})async{
    await preferences?.setString(key.name, value);
  }
  // MyCacheKeys.email , esra@amit.com
  // MyCacheKeys.password , 1314256
  static String getString ({required SharedKeys key }){
    return preferences?.getString(key.name )?? "" ;
  }

  void putInt({required SharedKeys key ,required int value}){
    preferences?.setInt(key.name, value);
  }
  int getInt({required key }){
    return preferences?.getInt(key) ?? 0;
  }

  static void putBool({required SharedKeys key ,required bool value}){
    preferences?.setBool(key.name, value);
  }
 static bool getBool({required SharedKeys key }){
    return preferences?.getBool(key.name) ?? false;
  }

  void putDouble({required SharedKeys key ,required double value}){
    preferences?.setDouble(key.name, value);
  }
  double getDouble({required SharedKeys key }){
    return preferences?.getDouble(key.name) ?? 0.0;
  }

  void removeFromShared({required key})
  {
    preferences?.remove(key);
  }

  void clearShared(){
    preferences?.clear();
  }

}