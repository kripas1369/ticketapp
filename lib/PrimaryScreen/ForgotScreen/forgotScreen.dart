import 'package:flutter/material.dart';
import 'package:ticketapp/PrimaryScreen/RegisterScreen/registerScreen.dart';
import 'package:ticketapp/SecondaryScreen/HomeScreen/homeScreen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {

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
                  Text("Forgot Password",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  // SizedBox(height: 10,),
                  // Text("Please enter you registered mobile number or email to login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45),),
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
                  // Text("Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  // TextFormField(
                  //   controller: passwordController,
                  //   decoration: InputDecoration(
                  //     hintText: "Please enter Password",
                  //     border: OutlineInputBorder( borderRadius: BorderRadius.circular(20)
                  //     ),
                  //   ), validator: (value){
                  //   if(value==null || value.isEmpty){
                  //     return "Please enter you Password";
                  //   }
                  //   return null;
                  // },
                  // ),
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
                        // Navigator.pushNamed(context, (Routes.forgotpsw));
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
