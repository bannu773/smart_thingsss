import 'package:Arum_Smart_Home/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:Arum_Smart_Home/color/colors.dart' as color;
import 'package:Arum_Smart_Home/color/dark_color.dart' as darkcolor;
import 'package:provider/provider.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final gradientboxFirst = themeProvider.isDarkMode
        ? darkcolor.AppColorDark.gradientboxFirst
        : color.AppColor.gradientboxFirst;

    final gradientboxSecond = themeProvider.isDarkMode
        ? darkcolor.AppColorDark.gradientboxSecond
        : color.AppColor.gradientboxSecond;

    final sign_in_text_tt = themeProvider.isDarkMode
        ? color.AppColor.sign_in_text_tt
        : darkcolor.AppColorDark.sign_in_text_tt;

    var currentwidth = MediaQuery.of(context).size.width;
    var currentheight = MediaQuery.of(context).size.height;

    bool isChecked = false;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: color.AppColor.back_sign_in),
        child: Column(
          children: [
            Container(
              height: currentheight,
              width: currentwidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientSecond.withOpacity(0.3),
                    color.AppColor.gradientSecond.withOpacity(0.7),
                  ],
                  begin: Alignment.centerRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // LOGO PART
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 39,
                          height: 37,
                          child: Text(""),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/logo_1.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "ARUM SMART HOME",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: color.AppColor.sign_in_text,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              "Secure & Connected",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 4,
                                fontWeight: FontWeight.w500,
                                color: color.AppColor.sign_in_text,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Existing code...

                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Create an account",
                          style: TextStyle(
                            color: sign_in_text_tt,
                            fontWeight: FontWeight.w700,
                            fontSize: 23,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Enter your details and start your journey with us",
                          style: TextStyle(
                            color: sign_in_text_tt,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        // Input boxes
                        Container(
                          width: currentwidth / 1.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true, // Set the TextField to be filled
                                fillColor: color.AppColor.sign_in_txfi,
                                labelText: 'Username',
                                labelStyle: TextStyle(
                                  color: sign_in_text_tt,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: sign_in_text_tt,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 20),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),

                        Container(
                          width: currentwidth / 1.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true, // Set the TextField to be filled
                              fillColor: color.AppColor.sign_in_txfi,
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: sign_in_text_tt,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: sign_in_text_tt,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),

                        Container(
                          width: currentwidth / 1.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true, // Set the TextField to be filled
                              fillColor: color.AppColor.sign_in_txfi,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: sign_in_text_tt,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: sign_in_text_tt,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),

                        Container(
                          width: currentwidth / 1.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true, // Set the TextField to be filled
                              fillColor: color.AppColor.sign_in_txfi,
                              labelText: 'Mobile',
                              labelStyle: TextStyle(
                                color: sign_in_text_tt,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: sign_in_text_tt,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            Text(
                              'I read and agree to Terms and Conditions',
                              style: TextStyle(
                                  color: sign_in_text_tt, fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 40,
                          width: currentwidth / 1.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: color.AppColor
                                  .sign_in_color_bu, // Set the desired color here
                            ),
                            onPressed: () {
                              // Add your logic here
                            },
                            child: Text(
                              'Create an account',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Container(
                      height: 40,
                      width: currentwidth / 1.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: color.AppColor
                              .sign_in_color_bu, // Set the desired color here
                        ),
                        onPressed: () {
                          // Add your logic here
                        },
                        child: Text(
                          'Already have an account',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )

// Existing code...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
