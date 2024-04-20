import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            height: 30,
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
            height: 15,
          ),
          InkWell(
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
                        Text("Edit Your Name",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF06004F),),),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
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
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.centerRight,
              width: 398,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 65, 130, 0.3),
                  )),
              child: const Icon(Icons.edit),
            ),
          ),
          const SizedBox(
            height: 30,
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
            height: 15,
          ),
          InkWell(
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
                        Text("Edit Your Name",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF06004F),),),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
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
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.centerRight,
              width: 398,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 65, 130, 0.3),
                  )),
              child: const Icon(Icons.edit),
            ),
          ),
          const SizedBox(
            height: 30,
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
            height: 15,
          ),
          InkWell(
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
                        Text("Edit Your Name",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF06004F),),),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
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
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.centerRight,
              width: 398,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 65, 130, 0.3),
                  )),
              child: const Icon(Icons.edit),
            ),
          ),
          const SizedBox(
            height: 30,
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
            height: 15,
          ),
          InkWell(
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
                        Text("Edit Your Name",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF06004F),),),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
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
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.centerRight,
              width: 398,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 65, 130, 0.3),
                  )),
              child: const Icon(Icons.edit),
            ),
          ),

        ],
      ),
    );
  }
}
