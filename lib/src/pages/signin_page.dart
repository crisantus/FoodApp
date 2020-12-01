import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();

}

class _SignInPageState extends State<SignInPage> {

  bool _toggleVisibility=true;

  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Your email or username",
          hintStyle: TextStyle(
            //color: Color(0xffbdc2c),
            fontSize: 18.0,
          )
      ),
    );
  }

  Widget _buildPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter your Password",
          hintStyle: TextStyle(
            //color: Color(0xffbdc2c),
            fontSize: 18.0,
          ),
          suffixIcon: IconButton(
              icon: _toggleVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
              onPressed: (){
                setState(() {
                  _toggleVisibility = !_toggleVisibility;
                });
              })
      ),
      obscureText: _toggleVisibility,
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            margin: EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50.0,),
                Card(
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                       _buildEmailTextField(),
                        SizedBox(height: 20.0,),
                        _buildPasswordTextField(),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Center(child: Text("Sign In",
                    style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),)),
                ),
                Divider(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Color(0xffbdc2cb),
                        fontWeight: FontWeight.bold,fontSize: 18.0),),
                    SizedBox(width: 10.0,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute
                          (builder: (BuildContext context) => SignUpPage()));
                      },
                      child: Text("Sign up",style: TextStyle(color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,fontSize: 18.0),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
