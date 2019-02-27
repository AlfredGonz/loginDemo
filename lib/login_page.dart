import 'package:flutter/material.dart';
import 'package:login_demo/home_page.dart';


class LoginPage extends StatelessWidget
{
  static String tag = 'login-page';

  @override
  Widget build(BuildContext context)
  {

     final logo = Padding(
       padding: EdgeInsets.fromLTRB(0.0, 70, 0.0, 25) ,
      child: Image.asset(
      'assets/logo.png', 
      width: 110.0,
      height: 110.0,
    )
     );    

    final email = Padding(
      padding: EdgeInsets.fromLTRB(30.0,70.0,30.0,15.0),
      child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'CORREO', 
        hintStyle: TextStyle(fontSize: 14),
        contentPadding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0),
        fillColor: Colors.white, filled: true,
        prefixIcon: Icon(Icons.email, color: Colors.indigo[900],),
        focusedBorder: UnderlineInputBorder(      
        borderSide: BorderSide(color: Colors.indigo[900], 
        ),    
        ),
      ),
       style: new TextStyle(color: Colors.indigo[900]),
    )
    );

    final password = Padding(
      padding: EdgeInsets.fromLTRB(30.0,0.0,30.0,0.0),
      child: TextField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'CONTRASEÑA',
        hintStyle: TextStyle(fontSize: 14),
        contentPadding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0),
       // border: OutlineInputBorder(     //bordes redondos
        //  borderRadius: BorderRadius.circular(32.0))
        fillColor: Colors.white, filled: true,
        prefixIcon: Icon(Icons.lock, color: Colors.indigo[900],),
        focusedBorder: UnderlineInputBorder(      
        borderSide: BorderSide(color: Colors.indigo[900], 
        ),    
        ),
      ),
       style: new TextStyle(color: Colors.indigo[900]),
    )
    );

    final loginButton =Padding(
      padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
      child: ButtonTheme(
        height: 55,
        child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        onPressed: ()
        {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.indigo,
        child: Text('Iniciar Sesión', style:TextStyle(color: Colors.white)),
      ),
      ),
    );

    final forgotLabel = 
        Padding(
          padding:EdgeInsets.fromLTRB(0, 0, 0, 40.0),
          child: FlatButton(
      child: Text(
        '¿Olvidaste la contraseña?',
        style:TextStyle(color: Colors.blueGrey,fontSize: 12),
      ),
      onPressed: ()
      {
        
      },
    )
        );
    

     final registro = FlatButton(
      child: Text(
        'REGISTRATE',
        style:TextStyle(color: Colors.blueGrey,fontSize: 12),
        textAlign: TextAlign.left,
        
      ),
      onPressed: (){},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      //resizeToAvoidBottomPadding:false,
      body: (
         ListView(
          shrinkWrap: true,
        
          children: <Widget>[
            
            logo,
            email,
            password,
            forgotLabel,
            loginButton,
            registro            
          ],
        )
      ),
    );
  }
  
}