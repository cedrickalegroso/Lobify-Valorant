import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPagePageState createState() => _AuthPagePageState();
}

class _AuthPagePageState extends State<AuthPage> {
  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isSignin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        margin: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
            color: Color(0xff141313),
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 16,
                          right: MediaQuery.of(context).size.width / 16,
                          top: MediaQuery.of(context).size.width / 48,
                          bottom: MediaQuery.of(context).size.width / 48),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(""),
                          const Text(
                            'For Gamers by Gamers',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w800),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("// Terms of Serice",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 110, 108, 108),
                                  )),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 48,
                              ),
                              const Text("// Support the project",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 110, 108, 108),
                                  ))
                            ],
                          )
                        ],
                      ),
                    )),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff1D1D1D),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 3,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 16,
                          right: MediaQuery.of(context).size.width / 16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              isSignin ? 'Login' : 'Register',
                              style: const TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width / 80,
                            ),
                            Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    isSignin
                                        ? Column(
                                            children: [
                                              TextFormField(
                                                style: const TextStyle(
                                                    color: Colors.white),
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      const Color(0xff141313),
                                                  focusColor:
                                                      const Color.fromARGB(
                                                          255, 128, 115, 115),
                                                  labelStyle: const TextStyle(
                                                      color: Colors.white),
                                                  labelText: 'Email',
                                                  focusedBorder:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 59, 56, 56),
                                                        width: 0.0),
                                                  ),
                                                  enabledBorder:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 59, 56, 56),
                                                        width: 0.0),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                validator: (value) {
                                                  if (value?.isEmpty ?? true) {
                                                    return 'Please enter the name of the destination';
                                                  }
                                                  return null;
                                                },
                                                onChanged: (event) {
                                                  setState(() {
                                                    // _name.text.trim();
                                                  });
                                                },
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    80,
                                              ),
                                              TextFormField(
                                                style: const TextStyle(
                                                    color: Colors.white),
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      const Color(0xff141313),
                                                  focusedBorder:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 59, 56, 56),
                                                        width: 0.0),
                                                  ),
                                                  focusColor:
                                                      const Color.fromARGB(
                                                          255, 128, 115, 115),
                                                  labelStyle: const TextStyle(
                                                      color: Colors.white),
                                                  labelText: 'Password',
                                                  enabledBorder:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 59, 56, 56),
                                                        width: 0.0),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                validator: (value) {
                                                  if (value?.isEmpty ?? true) {
                                                    return 'Please enter the name of the destination';
                                                  }
                                                  return null;
                                                },
                                                onChanged: (event) {
                                                  setState(() {
                                                    // _name.text.trim();
                                                  });
                                                },
                                              ),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              SizedBox(
                                                width: 500,
                                                height: 100,
                                                child: Row(
                                                  children: [
                                                    TextFormField(
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                      decoration:
                                                          InputDecoration(
                                                        filled: true,
                                                        fillColor: const Color(
                                                            0xff141313),
                                                        focusColor: const Color
                                                            .fromARGB(
                                                            255, 128, 115, 115),
                                                        labelStyle:
                                                            const TextStyle(
                                                                color: Colors
                                                                    .white),
                                                        labelText: 'Email',
                                                        focusedBorder:
                                                            const OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          59,
                                                                          56,
                                                                          56),
                                                                  width: 0.0),
                                                        ),
                                                        enabledBorder:
                                                            const OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          59,
                                                                          56,
                                                                          56),
                                                                  width: 0.0),
                                                        ),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      validator: (value) {
                                                        if (value?.isEmpty ??
                                                            true) {
                                                          return 'Please enter the name of the destination';
                                                        }
                                                        return null;
                                                      },
                                                      onChanged: (event) {
                                                        setState(() {});
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              TextFormField(
                                                style: const TextStyle(
                                                    color: Colors.white),
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      const Color(0xff141313),
                                                  focusColor:
                                                      const Color.fromARGB(
                                                          255, 128, 115, 115),
                                                  labelStyle: const TextStyle(
                                                      color: Colors.white),
                                                  labelText: 'Email',
                                                  focusedBorder:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 59, 56, 56),
                                                        width: 0.0),
                                                  ),
                                                  enabledBorder:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 59, 56, 56),
                                                        width: 0.0),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                validator: (value) {
                                                  if (value?.isEmpty ?? true) {
                                                    return 'Please enter the name of the destination';
                                                  }
                                                  return null;
                                                },
                                                onChanged: (event) {
                                                  setState(() {
                                                    // _name.text.trim();
                                                  });
                                                },
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    80,
                                              ),
                                              TextFormField(
                                                style: const TextStyle(
                                                    color: Colors.white),
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      const Color(0xff141313),
                                                  focusedBorder:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 59, 56, 56),
                                                        width: 0.0),
                                                  ),
                                                  focusColor:
                                                      const Color.fromARGB(
                                                          255, 128, 115, 115),
                                                  labelStyle: const TextStyle(
                                                      color: Colors.white),
                                                  labelText: 'Password',
                                                  enabledBorder:
                                                      const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 59, 56, 56),
                                                        width: 0.0),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                validator: (value) {
                                                  if (value?.isEmpty ?? true) {
                                                    return 'Please enter the name of the destination';
                                                  }
                                                  return null;
                                                },
                                                onChanged: (event) {
                                                  setState(() {
                                                    // _name.text.trim();
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.width /
                                              80,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                      child: ElevatedButton(
                                        onPressed: () async {},
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: const Color(
                                              0xffFF0000), // Background color FF0000
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        child: Text(
                                          isSignin ? 'Login' : 'Register',
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: MediaQuery.of(context).size.width / 80,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  isSignin
                                      ? 'New Here? '
                                      : 'Already Have an Account? ',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSignin = isSignin ? false : true;
                                    });
                                  },
                                  child: Text(
                                      isSignin ? 'Create Account' : 'Sign In',
                                      style:
                                          const TextStyle(color: Colors.white)),
                                ),
                              ],
                            )
                          ])),
                )
              ]),
        ),
      ),
    );
  }
}
