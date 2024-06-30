import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _passwordVisibility = false;
  bool _confirmPasswordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 45.0,
            left: 28.0,
            right: 28.0,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Image(
                          image: AssetImage(
                            "assets/images/Logo.png",
                          ),
                        ),
                        const Text(
                          "Create an account",
                          style: TextStyle(
                            fontFamily: "PTSans",
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontFamily: "PTSans",
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: "Username",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(
                                  165,
                                  165,
                                  165,
                                  1,
                                ),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontFamily: "PTSans",
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: "Enter your email address",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(
                                  165,
                                  165,
                                  165,
                                  1,
                                ),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          obscureText: !_passwordVisibility,
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              fontFamily: "PTSans",
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordVisibility = !_passwordVisibility;
                                });
                              },
                              icon: Icon(
                                _passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 18.0,
                              ),
                            ),
                            hintText: "Password",
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(
                                  165,
                                  165,
                                  165,
                                  1,
                                ),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          obscureText: !_confirmPasswordVisibility,
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              fontFamily: "PTSans",
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _confirmPasswordVisibility =
                                      !_confirmPasswordVisibility;
                                });
                              },
                              icon: Icon(
                                _confirmPasswordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 18.0,
                              ),
                            ),
                            hintText: "Confirm Password",
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(
                                  165,
                                  165,
                                  165,
                                  1,
                                ),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    10.0,
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.green[500],
                              foregroundColor: Colors.white,
                              fixedSize: const Size(
                                358,
                                60,
                              )),
                          onPressed: () {},
                          child: const Text(
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: "PTSans",
                              fontWeight: FontWeight.w700,
                            ),
                            "Create an account",
                          ),
                        ),
                        const Text(
                          "Or register with",
                          style: TextStyle(
                            fontFamily: "PTSans",
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            backgroundColor: Colors.blue[500],
                            foregroundColor: Colors.white,
                            fixedSize: const Size(
                              358,
                              50,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                MdiIcons.google,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Text(
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: "PTSans",
                                  fontWeight: FontWeight.w700,
                                ),
                                "Continue with Google",
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            backgroundColor: Colors.blue[800],
                            foregroundColor: Colors.white,
                            fixedSize: const Size(
                              358,
                              50,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                MdiIcons.facebook,
                              ),
                              const SizedBox(
                                width: 6.84,
                              ),
                              const Text(
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: "PTSans",
                                  fontWeight: FontWeight.w700,
                                ),
                                "Continue with Facebook",
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontFamily: "PTSans",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontFamily: "PTSans",
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.green[500]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 45.0,
            left: 28.0,
            right: 28.0,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Image(
                          image: AssetImage(
                            "assets/images/Logo.png",
                          ),
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: "PTSans",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontFamily: "PTSans",
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: "Enter your email address",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(
                                  165,
                                  165,
                                  165,
                                  1,
                                ),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          obscureText: !_passwordVisibility,
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              fontFamily: "PTSans",
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordVisibility = !_passwordVisibility;
                                });
                              },
                              icon: Icon(
                                _passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 18.0,
                              ),
                            ),
                            hintText: "Password",
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(
                                  165,
                                  165,
                                  165,
                                  1,
                                ),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.green[500],
                                fontFamily: "PTSans",
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            backgroundColor: Colors.green[500],
                            foregroundColor: Colors.white,
                            fixedSize: const Size(
                              358,
                              60,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: "PTSans",
                              fontWeight: FontWeight.w700,
                            ),
                            "Login",
                          ),
                        ),
                        const Text(
                          "Or register with",
                          style: TextStyle(
                            fontFamily: "PTSans",
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            backgroundColor: Colors.blue[500],
                            foregroundColor: Colors.white,
                            fixedSize: const Size(
                              358,
                              50,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                MdiIcons.google,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Text(
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: "PTSans",
                                  fontWeight: FontWeight.w700,
                                ),
                                "Continue with Google",
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            backgroundColor: Colors.blue[800],
                            foregroundColor: Colors.white,
                            fixedSize: const Size(
                              358,
                              50,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                MdiIcons.facebook,
                              ),
                              const SizedBox(
                                width: 6.84,
                              ),
                              const Text(
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: "PTSans",
                                  fontWeight: FontWeight.w700,
                                ),
                                "Continue with Facebook",
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontFamily: "PTSans",
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontFamily: "PTSans",
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.green[500]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
