import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  var controller = Get.put(Controller());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              color: Color.fromARGB(232, 111, 183, 111),
              height: height,
              width: width,
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: height * 0.2,
                          child: Image.asset("assets/logo.png"))),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                      height: constraints.maxHeight * 0.7,
                      width: width,
                      padding: EdgeInsets.fromLTRB(22, 43, 22, 0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/background_login.png'),
                          // Replace 'assets/background_image.jpg' with your image path
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Halo, Selamat",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "datang",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Silahkan masuk untuk melanjutkan aplikasi",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            Obx(() {
                              return Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "NIP/NIK",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: controller.nikController,
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            value == "") {
                                          return "NIP/NIK harus di isi!";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: const Color(0xFFFCFDFE),
                                        hintText: "Masukan NIP/NIK Anda",
                                        hintStyle: const TextStyle(
                                          color: Color(0xFF696F79),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        prefixIcon: const Icon(
                                          Icons.email_outlined,
                                          size: 25,
                                          color: Colors.green,
                                        ),
                                        isDense: true,
                                        // contentPadding: EdgeInsets.fromLTRB(
                                        //     15, 30, 15, 0),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(13),
                                          borderSide: const BorderSide(
                                              width: 1, color: Color(0xFFDEDEDE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 1, color: Colors.redAccent),
                                          borderRadius: BorderRadius.circular(13),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Password",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: controller.nikController,
                                      keyboardType: TextInputType.text,
                                      obscureText: controller.invisible.value,
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            value == "") {
                                          return "Password harus di isi!";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: const Color(0xFFFCFDFE),
                                        hintText: "Masukan Password Anda",
                                        hintStyle: const TextStyle(
                                          color: Color(0xFF696F79),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        prefixIcon: const Icon(
                                          Icons.lock_outline,
                                          size: 25,
                                          color: Colors.green,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            (controller.invisible.value == true)
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off,
                                            color: Colors.green,
                                            size: 25,
                                          ),
                                          onPressed: () {
                                            controller.invisible.value =
                                                !controller.invisible.value;
                                          },
                                        ),
                                        isDense: true,
                                        // contentPadding: EdgeInsets.fromLTRB(
                                        //     15, 30, 15, 0),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(13),
                                          borderSide: const BorderSide(
                                              width: 1, color: Color(0xFFDEDEDE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 1, color: Colors.redAccent),
                                          borderRadius: BorderRadius.circular(13),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: SizedBox(
                                width: 176,
                                height: 57,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                                  ),
                                  onPressed: () {},
                                  child: Text("Login",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),),
                                ),
                              ),
                            ),
                            // SizedBox(height: 300,)
                          ],
                        ),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
