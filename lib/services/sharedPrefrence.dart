
import 'package:shared_preferences/shared_preferences.dart';
import '../app_data/constant.dart';

saveprefrenceisfirsttime() async{
SharedPreferences preference=await SharedPreferences.getInstance() ;
preference.setBool('isfirsttime', isfirsttime) ;
}
getprfrenceisfirsttime()async{

  SharedPreferences preference=await SharedPreferences.getInstance() ;
  isfirsttime=preference.getBool('isfirsttime')! ;
}
saveprefreneislogin()async{
  SharedPreferences preference=await SharedPreferences.getInstance() ;
  preference.setBool('islogin', islogin) ;
}
getprevrenceislogin()async{
  SharedPreferences preference=await SharedPreferences.getInstance() ;
  islogin=preference.getBool('islogin')! ;

}
saveprefrenceisadminprofil()async{
  SharedPreferences preference=await SharedPreferences.getInstance() ;
  preference.setBool('isadminprofil', isadminprofil) ;
}
getprefrenceisadminprofil()async{
  SharedPreferences preference=await SharedPreferences.getInstance() ;
  isadminprofil=preference.getBool('isadminprofil')! ;
}
saveprefrenceisenglish()async{
  SharedPreferences preference=await SharedPreferences.getInstance();
  preference.setBool('isenglish', isenglish) ;
}
getprefrenceisenglish() async {
  SharedPreferences preference=await SharedPreferences.getInstance() ;
  isenglish=preference.getBool('isenglish')!;
}
