import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'principale.dart';
import 'interface.dart';



class passage extends StatelessWidget{


  Widget build(BuildContext context){
     final user =Provider.of(context);
      print(user);
     if(user==null) {

       return Home();
     }else{
       return inter();
     }

  }
}