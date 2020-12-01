import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();

}

class _SignUpPageState extends State<SignUpPage> {

  bool _toggleVisibility=true;
  bool _toggleConfirmVisibility=true;

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

  Widget _buildUserNameTextField(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Username",
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

  Widget _buildConfirmPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter your Password",
          hintStyle: TextStyle(
            //color: Color(0xffbdc2c),
            fontSize: 18.0,
          ),
          suffixIcon: IconButton(
              icon: _toggleConfirmVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
              onPressed: (){
                setState(() {
                  _toggleConfirmVisibility = !_toggleConfirmVisibility;
                });
              })
      ),
      obscureText: _toggleConfirmVisibility,
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0,),
                Card(
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        _buildUserNameTextField(),
                        SizedBox(height: 20.0,),
                        _buildEmailTextField(),
                        SizedBox(height: 20.0,),
                        _buildPasswordTextField(),
                        SizedBox(height: 20.0,),
                        _buildConfirmPasswordTextField()
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Center(child: Text("Sign Up",
                    style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),)),
                ),
                Divider(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(color: Color(0xffbdc2cb),
                        fontWeight: FontWeight.bold,fontSize: 18.0),),
                    SizedBox(width: 10.0,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute
                          (builder: (BuildContext context) => SignInPage()));
                      },
                      child: Text("Sign in",style: TextStyle(color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,fontSize: 18.0),),
                    ),
                  ],
                )
              ],
            ),
          ),
    );
  }
}
