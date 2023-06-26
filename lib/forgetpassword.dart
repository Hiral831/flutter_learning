import 'package:flutter/material.dart';

class Mypass extends StatefulWidget {
  const Mypass({Key? key}) : super(key: key);

  @override
  State<Mypass> createState() => _MypassState();
}

class _MypassState extends State<Mypass> {
  final _formKey = GlobalKey<FormState>();
  String _password = '';
  String _confirmPassword = '';

  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');

      debugPrint(_password);
      debugPrint(_confirmPassword);

    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/5786039.jpg'), fit: BoxFit.cover
      )
      ),
      child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
      children: [
      Container(
      padding: EdgeInsets.only(left: 25, top: 50),
      child: Text("Forget Password ? ",
      style: TextStyle(
      color: Colors.black,
      fontSize: 30,

      ),),
      ),
          SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3, right: 30, left: 30 ),
      child: Column(
      children: [
      TextFormField(
      decoration: InputDecoration(
      fillColor: Colors.white60,
      filled: true,
      hintText: "Enter Your Password",
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30)
      )
      ),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'This field is required';
              }
              if (value.trim().length < 8 ) {
                return 'Password must be at least 8 characters in length';
              }
              if( !RegExp(r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*\W)(?!.* ).{8,16}$').hasMatch(value)){
                return "Password must have One upper,one lowrcase and special chartact";
              }

              return null;
            },
            onChanged: (value) => _password = value,
          ),


      SizedBox(
      height: 20,
      ),
      TextFormField(
      obscureText: true,
      decoration: InputDecoration(
      fillColor: Colors.white60,
      filled: true,
      hintText: "Confirm Your Password",
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30)
      )
      ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field is required';
          }

          if (value != _password) {
            return 'Confimation password does not match the entered password';
          }

          return null;
        },
        onChanged: (value) => _confirmPassword = value,

      ),

        const SizedBox(height: 20),
        Container(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: _trySubmitForm,
                child: const Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green))
        )
      ],
      ),
          ),
          )
      ],
      ),
      ),
      ),
    );
  }
}
