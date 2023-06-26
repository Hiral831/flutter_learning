// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class MyRegister extends StatefulWidget {
//   const MyRegister({Key? key}) : super(key: key);
//
//   @override
//   State<MyRegister> createState() => _MyRegisterState();
// }
//
// class _MyRegisterState extends State<MyRegister> {
//   // String _name = "";
//   // String _email = "";
//   // String _password = "";
//   // String _phoneNumber = "";
//
//   final _formKey = GlobalKey<FormState>();
//   // editing controller
//   final TextEditingController emailController = new TextEditingController();
//   final TextEditingController passwordController = new TextEditingController();
//
//   // firebase
//   final _auth = FirebaseAuth.instance;
//
//   // string for displaying the error Message
//   String? errorMessage;
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('assets/5786039.jpg'), fit: BoxFit.cover
//             )
//         ),
//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//           body: Stack(
//             children: [
//               Container(
//                 padding: EdgeInsets.only(left: 25, top: 50),
//                 child: Text("Register Yourself!",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 30,
//
//                   ),),
//               ),
//               SingleChildScrollView(
//                 child: Container(
//                   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3, right: 30, left: 30 ),
//                   child: Column(
//                     children: [
//                        TextFormField(
//                           autofocus: false,
//                           controller: emailController,
//                           keyboardType: TextInputType.emailAddress,
//                         decoration: InputDecoration(
//                             fillColor: Colors.white60,
//                             filled: true,
//                             hintText: "Enter Your Name",
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30)
//                             )
//                         ),
//                         validator: (value) {
//                           if (value!.isEmpty|| !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
//                             return " Enter correct name";
//
//                           }else{
//                             return null;
//                           }
//
//                         }
//
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       TextFormField(
//                         decoration: InputDecoration(
//                             fillColor: Colors.white60,
//                             filled: true,
//                             hintText: "Enter Your Email",
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30)
//                             )
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
//                         decoration: InputDecoration(
//                             fillColor: Colors.white60,
//                             filled: true,
//                             hintText: "Enter Your Phone Number",
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30)
//                             )
//                         ),
//                         validator: (value) {
//                           if (value == null || value.trim().isEmpty) {
//                             return 'This field is required';
//                           }
//
//                           else if( !RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$').hasMatch(value)){
//                             return "Invalid Phone number";
//                           }
//
//                           return null;
//                         },
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
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30)
//                             )
//                         ),
//                           validator: (value) {
//                             if (value!.isEmpty|| !RegExp(r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*\W)(?!.* ).{8,16}$').hasMatch(value!)){
//                               return " Enter valid Password";
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
// Row(
//   children: [
//     ElevatedButton(
//       child: Text('Register'),
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.green,
//       ),
//       onPressed: () {
//         // Validate returns true if the form is valid, or false otherwise.
//         if (_formKey.currentState!.validate()) {
//           // If the form is valid, display a snackbar. In the real world,
//           // you'd often call a server or save the information in a database.
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Processing Data')),
//           );
//           Navigator.pushNamed(context, 'home');
//         }
//       },
//     ),
//
//     SizedBox(
//       width: 50,
//     ),
//     ElevatedButton(
//       child: Text('Sign In Using Google'),
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.green,
//       ),
//       onPressed: () {
//         // Validate returns true if the form is valid, or false otherwise.
//         if (_formKey.currentState!.validate()) {
//           // If the form is valid, display a snackbar. In the real world,
//           // you'd often call a server or save the information in a database.
//           // ScaffoldMessenger.of(context).showSnackBar(
//           //   const SnackBar(content: Text('Processing Data')),
//           // );
//           Navigator.pushNamed(context, 'home');
//         }
//       },
//     ),
//   ],
//
//
//
// ),
//
//
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, 'login');
//                             },
//                             child: Text(
//                               'Or Log In ?',
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   color: Color(0xff4c505b),
//                                   fontSize: 18),
//                             ),
//                             style: ButtonStyle(),
//                           ),
//                           // TextButton(
//                           //     onPressed: () {},
//                           //     child: Text(
//                           //       'Forgot Password',
//                           //       style: TextStyle(
//                           //         decoration: TextDecoration.underline,
//                           //         color: Color(0xff4c505b),
//                           //         fontSize: 18,
//                           //       ),
//                           //     )),
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
//
