import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
class login extends StatefulWidget{

  _loginState createState() =>_loginState();
}
class _loginState extends State<login>{
  bool check=false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF28224e),
      body: SingleChildScrollView(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.35,
              width: MediaQuery.of(context).size.width*0.8,
              child: Image.asset("assets/images/MC.png"),
            ),

          ),

            Text('  Connexion',style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              fontWeight: FontWeight.bold
            ),),

          SizedBox(height:MediaQuery.of(context).size.height*0.05 ,),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            child: Text('  Email:',style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ),),
          ),
          SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),

          Container(
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width*0.8,
            decoration: deco(this.check),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email,color: Color(0xFF28224e),),
                SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                Container(
                  height:MediaQuery.of(context).size.height*0.03 ,
                  width: MediaQuery.of(context).size.width*0.65 ,
                  child: Center(
                      child:TextFormField(
                          style: TextStyle(
                            fontSize: 20
                          ),
                      )
                  ),
                )
              ],
            ),
          ),
          SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            child: Text('  Mot de passe:',style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),),
          ),
          SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
          Container(
              height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: deco(this.check),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock,color: Color(0xFF28224e),),
                SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                Container(
                  height:MediaQuery.of(context).size.height*0.03 ,
                  width: MediaQuery.of(context).size.width*0.65 ,
                  child: Center(
                      child:TextFormField(
                        obscureText: true,
                        style: TextStyle(
                            fontSize: 20
                        ),
                      )
                  ),
                )
              ],
            ),
          ),


          Center(child:Container(
             width: MediaQuery.of(context).size.width*0.8,

            child: Row(
              children: [
                Checkbox(checkColor:Colors.white
                    ,value: check
                    , onChanged: (bool x){
                  setState(() {
                    this.check=x;
                  });

                    }),
                Text("restez connecté ",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),)

              ],
            ),
          )),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width*0.5,

                child: FlatButton(
                  child: Text("Login",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color:Color(0xFF28224e)
                  ),)
                  ,
                  onPressed: (){

                  },
                ),
              
              decoration: BoxDecoration(
                  color:Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          )
        ],
      ),
    ));
  }
  deco(bool correct){
    return BoxDecoration(
        color:Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width:2,color:correct?Colors.redAccent:Colors.green)
    );
  }
}
