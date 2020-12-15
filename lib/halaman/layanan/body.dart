import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/halaman/layanan/bantuan.dart';
import 'package:obatin_app/halaman/layanan/konfirmasi_pembayaran.dart';
import 'package:obatin_app/halaman/layanan/riwayat_transaksi.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
         child: Column(
           children: [
             Row(
               children: [
                 GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Konfirmasi()));
                   },
                   child: Container(
                      height: 120.0,
                      width: 120.0,
                     decoration: BoxDecoration(
                       color: kWhiteColor,
                       image: DecorationImage(
                         image: AssetImage('images/icons/layanan/checklist.png'),
                       ),
                       borderRadius: BorderRadius.circular(15),
                       border: Border.all(),
                     ),
                    ),
                 ),
                 Spacer(),
                 GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Bantuan()));
                   },
                   child: Container(
                     height: 120.0,
                     width: 120.0,
                     decoration: BoxDecoration(
                       color: kWhiteColor,
                       image: DecorationImage(
                         image: AssetImage('images/icons/layanan/help.png'),
                       ),
                       borderRadius: BorderRadius.circular(15),
                       border: Border.all(),
                     ),
                   ),
                 ),
                 Spacer(),
                 GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Riwayat()));
                   },
                   child: Container(
                     height: 120.0,
                     width: 120.0,
                     decoration: BoxDecoration(
                       color: kWhiteColor,
                       image: DecorationImage(
                         image: AssetImage('images/icons/layanan/history.png'),
                         fit: BoxFit.scaleDown,
                       ),
                       borderRadius: BorderRadius.circular(15),
                       border: Border.all(),
                     ),
                   ),
                 ),
               ],
             ),
             Container(
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         height: 50.0,
                         width: 120.0,
                         child: Padding(
                           padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Konfirmasi",
                                 style: GoogleFonts.varelaRound(
                                     fontSize: 15,
                                     fontWeight: FontWeight.w600,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                       Container(
                         child: Padding(
                           padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Bantuan",
                                 style: GoogleFonts.varelaRound(
                                     fontSize: 15,
                                     fontWeight: FontWeight.w600
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                       Container(
                         child: Padding(
                           padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 5.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Riwayat Transaksi",
                                 style: GoogleFonts.varelaRound(
                                     fontSize: 15,
                                     fontWeight: FontWeight.w600
                                 ),
                                 maxLines: 2,
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                 ],
               ),

             ),
           ],
         ),
      );
  }
}