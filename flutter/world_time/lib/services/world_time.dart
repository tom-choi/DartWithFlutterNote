import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

  late String location; // location name for the UI
  late String Time; // the time in that location
  late String flag; // url to an asset flag icon
  late String url; // location api
  late bool isDaytime; // true or false if daytime or not

  WorldTime({required this.location,required this.flag,required this.url});

  Future<void> getTime() async{

    try{
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      //print(data);

      // get properties from data
      String datetime = data['datetime'];
      String utc_offset = data['utc_offset'].substring(1,3);
      //print(datetime);
      //print(utc_offset);

      //create DataTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(utc_offset)));



      //set time property
      isDaytime = now.hour > 6 && now.hour < 20;
      Time = DateFormat.jm().format(now);
      //print(now);


    }
    catch(error){
      print('caught error: $error');
      Time = 'Could not get time correctly';
    }
  }
}


WorldTime instance = WorldTime(location: 'Berlin',flag:'germany.png',url:'Europe/Berlin');