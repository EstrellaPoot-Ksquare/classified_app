import 'package:classified_app/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _fullNameCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _phoneCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var inputStyle = const TextStyle(
      fontSize: 20,
    );
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                HeroImage(height: height, width: width),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _fullNameCtrl,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: 'Full Name',
                            labelText: 'Full Name',
                          ),
                          style: inputStyle,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: _emailCtrl,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: 'Email Address',
                            labelText: 'Email Address',
                          ),
                          style: inputStyle,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: _phoneCtrl,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: 'Mobile Number',
                            labelText: 'Mobile Number',
                          ),
                          style: inputStyle,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: _passwordCtrl,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          textInputAction: TextInputAction.newline,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            labelText: 'Password',
                          ),
                          style: inputStyle,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          child: const Text('Register Now'),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextButton(
                          child: const Text('Already have an account?'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const SizedBox(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
