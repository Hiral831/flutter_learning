// import 'package:flutter/material.dart';
// import 'package:email_validator/email_validator.dart';
//
// class Mylogin extends StatefulWidget {
//   const Mylogin({Key? key}) : super(key: key);
//
//   @override
//   State<Mylogin> createState() => _MyloginState();
// }
//
// class _MyloginState extends State<Mylogin> {
//
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/5786039.jpg'), fit: BoxFit.cover
//           )
//         ),
//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//           body: Stack(
//             children: [
//               Container(
//                 padding: EdgeInsets.only(left: 25, top: 50),
//                 child: Text("Welcome to Login Page",
//                   style: TextStyle(
//                   color: Colors.black,
//                     fontSize: 30,
//
//                 ),),
//               ),
//               SingleChildScrollView(
//                 child: Container(
//                   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3, right: 30, left: 30 ),
//                   child: Column(
//                     children: [
//                       TextFormField(
//
//                         keyboardType: TextInputType.multiline,
//                         decoration: InputDecoration(
//                           fillColor: Colors.white60,
//                           filled: true,
//                           hintText: "Enter Your Email",
//
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30)
//                           )
//                         ),
//                           validator: (value) {
//                             if (value!.isEmpty|| !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)){
//                               return " Enter correct email";
//
//                             }else{
//                               return null;
//                             }
//
//                           }
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                             fillColor: Colors.white60,
//                             filled: true,
//                             hintText: "Enter Your Password",
//                             errorMaxLines: 2,
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30)
//                             )
//                         ),
//                         validator: (value) {
//                           if (value == null || value.trim().isEmpty) {
//                             return 'This field is required';
//                           }
//
//                          else if( !RegExp(r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*\W)(?!.* ).{8,16}$').hasMatch(value)){
//                             return value.contains("a-z A-z")
//                             ? "Password must have One upper,one lowrcase and special character"
//                             : null ;
//                           }
//
//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//
//                           ElevatedButton(
//                             child: Text('Login'),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.green,
//                             ),
//                             onPressed: () {
//                               // Validate returns true if the form is valid, or false otherwise.
//                               if (_formKey.currentState!.validate()) {
//                                 // If the form is valid, display a snackbar. In the real world,
//                                 // you'd often call a server or save the information in a database.
//                                 Navigator.pushNamed(context, 'home');
//                                 // ScaffoldMessenger.of(context).showSnackBar(
//                                 //   const SnackBar(content: Text('Processing Data')),
//                                 // );
//                               }
//                             },
//
//
//                           ),
//
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, 'register');
//                             },
//                             child: Text(
//                               'Sign Up',
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   color: Color(0xff4c505b),
//                                   fontSize: 18),
//                             ),
//                             style: ButtonStyle(),
//                           ),
//                           TextButton(
//                               onPressed: () {
//                                 Navigator.pushNamed(context, 'forgetpassword');
//                               },
//                               child: Text(
//                                 'Forgot Password ?',
//                                 style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   color: Color(0xff4c505b),
//                                   fontSize: 18,
//                                 ),
//                               ),
//                               style: ButtonStyle(),
//                           ),
//
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
