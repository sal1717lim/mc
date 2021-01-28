

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:animator/animator.dart';
class load extends StatefulWidget{

  _loadState createState() =>_loadState();
}
class _loadState extends State<load>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF28224e),
      body: Column(
        children: [
          Center(

              child:Animator<double>(
                customListener: (animatorState){
                  if(animatorState.value==300){
                    print("dala30");
                  }

                },
                tween: Tween<double>(begin: 0,end: MediaQuery.of(context).size.width*0.8),
                cycles: 1,
                 builder: (context,animatorState,child)=>Container(
                   child: Image.asset("assets/images/MC.png"),
                   height: animatorState.value,
                   width: animatorState.value,


      ),

              ))

        ],
      ),
    );
  }
}