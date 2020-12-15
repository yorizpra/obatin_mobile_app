import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/halaman/keranjang/checkout.dart';
import 'package:obatin_app/halaman/keranjang/item.dart';

class Keranjang extends StatefulWidget{
  @override
  _KeranjangState createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        leading: Icon(Icons.shopping_cart),
        backgroundColor: kPrimaryColor,
        title: Column(
          children: <Widget>[
            Text('Keranjang Belanja', style: GoogleFonts.varelaRound(fontSize: 20.0, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 18.0),
            ItemKeranjang(),
            ItemKeranjang(),
            ItemKeranjang(),
            SizedBox(height: 180.0),
            Divider(thickness: 2.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                    "Total",
                    style: GoogleFonts.varelaRound(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    ),
                ),
                Text(
                    "Rp. 3000",
                    style: GoogleFonts.varelaRound(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600
                    ),
                ),
              ],
            ),
            Spacer(),
            MaterialButton(
              minWidth: 220.0,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout()));
              },
              color: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                "Checkout",
                style: GoogleFonts.varelaRound(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  color: kWhiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}