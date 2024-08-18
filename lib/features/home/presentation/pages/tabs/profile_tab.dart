import 'package:e_commerce/config/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Welcome",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF06004F),
                ),
              ),
              Text(
                "Mohamed@gmail.com",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF06004F)),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Your Full Name",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF06004F)),
              ),
              const SizedBox(
                height: 10,
              ),
               TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    hintStyle: const TextStyle(color: const Color(0xFF06004F),
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Container(
                            padding: const EdgeInsets.all(25),
                            height: MediaQuery.of(context).size.height * 0.70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Edit Your Name",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF06004F),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Edit Your Name",
                                    hintStyle: const TextStyle(
                                      color: const Color(0xFF06004F),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(Icons.edit),
                ),
              ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Your E-Mail",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF06004F)),
              ),
              const SizedBox(
                height: 10,
              ),
               TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    hintStyle: const TextStyle(color: const Color(0xFF06004F),
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: const EdgeInsets.all(25),
                              height: MediaQuery.of(context).size.height * 0.70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Edit Your E-Mail",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF06004F),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Edit Your E=Mail",
                                      hintStyle: const TextStyle(color: const Color(0xFF06004F),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Icon(Icons.edit),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Your Password",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF06004F)),
              ),
              const SizedBox(
                height: 10,
              ),
             TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    hintStyle: const TextStyle(color: const Color(0xFF06004F),
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon:  InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: const EdgeInsets.all(25),
                              height: MediaQuery.of(context).size.height * 0.70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Edit Your Password",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF06004F),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Edit Your Password",
                                      hintStyle: const TextStyle(color: const Color(0xFF06004F),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Icon(Icons.edit),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Your Phone Number",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF06004F)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Phone Number",
                    hintStyle: const TextStyle(color: const Color(0xFF06004F),
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: const EdgeInsets.all(25),
                              height: MediaQuery.of(context).size.height * 0.70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Edit Your Phone Number",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF06004F),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Edit Your Phone Number",
                                      hintStyle: const TextStyle(color: const Color(0xFF06004F),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child:  Icon(Icons.edit),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutesName.login);
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  child: const Text(
                    "Log Out",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
