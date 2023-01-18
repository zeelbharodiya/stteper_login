import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {

  int initialstep = 0;

  String? na;
  String? des;
  String? numbers;

  GlobalKey<FormState> formKey =  GlobalKey<FormState>();
  GlobalKey<FormState> formKey0 =  GlobalKey<FormState>();
  GlobalKey<FormState> formKey1 =  GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Stepper App",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400),),
      ),
      body: Theme(
        data: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red))),
          canvasColor: Colors.yellow,
          colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: Colors.red,
            background: Colors.black,
            secondary: Colors.green,
          ),
        ),
        child: Stepper(
          currentStep: initialstep,
          onStepContinue: () {
            setState(() {
              if(initialstep < 2){
                ++initialstep;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if(initialstep > 0){
                --initialstep;
              }
            });
          },
          onStepTapped: (val) {
            setState(() {
              initialstep = val;
            });
          },
          controlsBuilder: (context , controlDetails){
            controlDetails.stepIndex;
            return Row(
              children: [
                (controlDetails.stepIndex == 0)? Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            formKey.currentState!.save();
                            setState(() {
                              // controlDetails.onStepContinue;
                              if(initialstep < 1){
                                ++initialstep;
                              }
                            });
                          }
                        },
                        child: Text("CONTINUE"),),
                      SizedBox(width: 13,),
                      OutlinedButton(onPressed: controlDetails.onStepCancel, child: Text("CANCEL"),),
                    ],
                  ),
                ):(controlDetails.stepIndex==1)?Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if(formKey0.currentState!.validate()){
                            formKey0.currentState!.save();
                            setState(() {
                              // controlDetails.onStepContinue;
                              if(initialstep < 2){
                                ++initialstep;
                              }
                            });
                          }
                        },
                        child: Text("CONTINUE"),),
                      SizedBox(width: 13,),
                      OutlinedButton(onPressed: controlDetails.onStepCancel, child: Text("CANCEL"),),
                    ],
                  ),
                ):
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      // ElevatedButton(
                      //   onPressed: () {
                      //     if(formKey1.currentState!.validate()){
                      //       formKey1.currentState!.save();
                      //       setState(() {
                      //         // controlDetails.onStepContinue;
                      //         if(initialstep < 3){
                      //           ++initialstep;
                      //         }
                      //       });
                      //     }
                      //   },
                      //   // controlDetails.onStepContinue,
                      //   child: Text("CONTINUE"),),
                      // SizedBox(width: 13,),
                      // OutlinedButton(onPressed: controlDetails.onStepCancel, child: Text("CANCEL"),),
                    ],
                  ),
                )
                //     : Padding(
                //   padding: const EdgeInsets.only(top: 10),
                //   child: Row(
                //     children: [
                //       ElevatedButton(
                //         onPressed: () {
                //           setState(() {
                //             // detail c = detail (
                //             //   image: _image,
                //             //   name: na,
                //             //   discription: des,
                //             // );
                //
                //             if(formKey2.currentState!.validate()){
                //               formKey2.currentState!.save();
                //               setState(() {
                //                 // controlDetails.onStepContinue;
                //                 if(initialstep < 4){
                //
                //                   };
                //                 }
                //               );
                //             }
                //
                //
                //           });
                //
                //         }, child: Text("ADD"),),
                //       SizedBox(width: 13,),
                //       OutlinedButton(onPressed: controlDetails.onStepCancel, child: Text("CANCEL"),),
                //     ],
                //   ),
                // ) ,

              ],
            );
          },
            steps: [
              Step(
                isActive: (initialstep >= 0) ? true : false,
                title: Text("SignUp"),
                subtitle: Text(""),
                content: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if(val!.isEmpty){
                            return "Please enter name...";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            na = val;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline,color: Colors.grey,),
                          hintText: "Suresh Shah",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        validator: (val) {
                          if(val!.isEmpty){
                            return "Please enter email...";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            na = val;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                          hintText: "Email id",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        validator: (val) {
                          if(val!.isEmpty){
                            return "Please enter password...";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            na = val;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.grey,),
                          hintText: "Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        validator: (val) {
                          if(val!.isEmpty){
                            return "Please enter confirm pass...";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            na = val;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.grey,),
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                isActive: (initialstep >= 1) ? true : false,
                title: Text("Login"),
                subtitle: Text(""),
                content: Form(
                  key: formKey0,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if(val!.isEmpty){
                            return "Please enter user name...";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            des = val;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline,color: Colors.grey,),
                          hintText: "User Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        validator: (val) {
                          if(val!.isEmpty){
                            return "Please enter password...";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            des = val;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.grey,),
                          hintText: "Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                state: StepState.complete,
                isActive: (initialstep >= 2) ? true : false,
                title: Text("Home"),
                subtitle: Text(""),
                content: Container(),
              ),
            ],
        ),
      ),
    );
  }
}
