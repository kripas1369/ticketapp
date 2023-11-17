import 'package:flutter/material.dart';
import 'package:ticketapp/PrimaryScreen/ForgotScreen/forgotScreen.dart';
import 'package:ticketapp/PrimaryScreen/RegisterScreen/registerScreen.dart';
import 'package:ticketapp/SecondaryScreen/HomeScreen/homeScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formkey =GlobalKey<FormState>();
  final mobileController = TextEditingController();
  final passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60,),
                  Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("Please fill all the information below to register on App.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45),),
                  SizedBox(height: 50,),
                  Text("Email",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  TextFormField(

                    controller: mobileController,
                    decoration: InputDecoration(
                      hintText: "Please enter mobile number",
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Please enter you mobile number";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 20,),
                  Text("Full Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  TextFormField(

                    controller: mobileController,
                    decoration: InputDecoration(
                      hintText: "Please enter Full name",
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Please enter you Full name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  Text("Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Please enter Password",
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(20)
                      ),
                    ), validator: (value){
                    if(value==null || value.isEmpty){
                      return "Please enter you Password";
                    }
                    return null;
                  },
                  ), SizedBox(height: 20,),
                  Text("Conform Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Please enter Conform Password",
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(20)
                      ),
                    ), validator: (value){
                    if(value==null || value.isEmpty){
                      return "Please enter you  Conform Password";
                    }
                    return null;
                  },
                  ),
                  SizedBox(height: 20,),
                  MaterialButton(
                    color: Colors.blue,
                    height: 60,
                    minWidth: 400,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    onPressed: ()async{
                      if(_formkey.currentState!.validate()){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );

                      };
                    },
                    child: Text("Login",style: TextStyle(fontSize: 24,color:Colors.white ),),),
                  SizedBox(height: 30,),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForgotScreen()),
                        );
                      },
                      child: Center(
                          child: Text(
                            "Forgot Password ?",
                          ))),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          // return print("object");
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterScreen()),
                          );
                        },
                        child: Text(
                          "Register Now",
                          style: TextStyle(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
