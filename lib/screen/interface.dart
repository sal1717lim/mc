import 'package:flutter/material.dart';
import '../outils/firebase.dart';
class inter extends StatefulWidget{

  _interface createState()=> _interface();

}
class _interface extends State<inter>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(

      ),
      appBar: AppBar(
        actions: [
         /* Premiere solution
           FlatButton(onPressed: ()

    {

    }
    ,child: Text("Deconnexion")
            )*/
         IconButton(

             icon: Icon(Icons.person),
             onPressed:
             ()async {
               var x= await Auth().deco();
         })
            ,

        ],
      ),
      body: Column(
        children:[

         Container(

        child: RaisedButton(
          onPressed: () async{
              var x= await Auth().deco();
             /* if(x!=null)
              Navigator.pop(context);*/
          },
        ),
      )],
    ));
  }

}