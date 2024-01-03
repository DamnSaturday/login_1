import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:login/features/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:login/screens/my_dashBoard_screen.dart';
import '../widgets/cus_scaffwid.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formLoginKey = GlobalKey<FormState>();
  bool rememberPass = true;

  final FirebaseAuthService _auth = FirebaseAuthService();

  final _id_emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose(){
    _id_emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Dominion University College\n',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF821538),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 0),
                    Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(height: 30),
                    // Add your form widget here
                    Form(
                      key: _formLoginKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: _id_emailController,
                            style: const TextStyle(
                              color: Color(0xFF821538),
                            ),
                            validator: (value) {
                              if(value == null || value.isEmpty){
                                return 'Please enter ID or Email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'ID/Email',
                              hintText: 'Index no. or Email',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF133888),
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              enabledBorder:  OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF133888),
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: _passwordController,
                            style: const TextStyle(
                              color: Color(0xFF821538),
                            ),
                            obscureText: true,
                            obscuringCharacter: '*',
                            validator: (value) {
                              if(value == null || value.isEmpty){
                                return 'Please enter Password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF133888),
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              enabledBorder:  OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF133888),
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: rememberPass,
                                    onChanged: (bool? value){
                                      setState(() {
                                        rememberPass = value!;
                                      });
                                    },
                                    activeColor: const Color(0xFF133888),
                                  ),
                                  const Text(
                                    'Remember me',
                                    style: TextStyle(
                                      color: Color(0xFF133888),
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                child: const Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                    color: Color(0xFFd11422),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: _signIn,
                              child: const Text('Login'),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Divider(
                                    thickness: 0.7,
                                    color: const Color(0xFF133888).withOpacity(0.4),
                                  ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 0,
                                    horizontal: 10,
                                  ),
                                child: Text(
                                  'Sign in With',
                                  style: TextStyle(
                                    color: Color(0xFF133888),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 0.7,
                                  color: const Color(0xFF133888).withOpacity(0.4),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Logo(Logos.google),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void _signIn() async {
    String email = _id_emailController.text;
    String password = _passwordController.text;

    if (_formLoginKey.currentState!.validate()) {
      if (rememberPass) {
        User? user = await _auth.signInWithEmailAndPassword(email, password);
        if (user != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Processing Data')),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Logged In')),
          );
          Future.delayed(const Duration(seconds: 4), () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const MyDashboardScreen()),
            );
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Email or Password is incorrect')),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Device will not remember your logins: Processing Data'),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Logged In')),
        );
        Future.delayed(const Duration(seconds: 4), () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const MyDashboardScreen()),
          );
        });
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid Inputs')),
      );
    }
  }
}

