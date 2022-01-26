import 'package:firstapp/utilis/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;

  final _Formkey= GlobalKey<FormState>();

  moveToHome(BuildContext) async{
    if(_Formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView( //if size overfits then we can scroll through this
        child: Form(
          key: _Formkey,
          child: Column(
            children: [
               Image.asset("assets/images/login_image.png",
               fit: BoxFit.cover),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name !!",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username"
                      ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                    }
                    return null;
                  },
                      onChanged: (value){
                        name=value;
                        setState(() { }); //calling stateful function
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password"
                      ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          }
                         else if(value.length<6){
                           return "Password should be atleast 6 characters";
                          }
                          return null;
                        }
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                   Material(
                       color: Colors.deepPurple,
                       borderRadius: BorderRadius.circular(changeButton ? 50 :8),
                     child: InkWell(
                       onTap: ()=> moveToHome(context),                      // we will make it animated container
                       child: AnimatedContainer(
                             duration: Duration(seconds: 1),                      //designing a button using a container, as
                                                                  // container cannot be pressed we will wrap it up with inkwell widget
                         width: changeButton ? 60 : 130,
                         height: 50,
                         alignment: Alignment.center,
                         child: const Text(
                             "LOGIN",
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 15
                         ),
                         ),
                       ),
                     ),
                   ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
