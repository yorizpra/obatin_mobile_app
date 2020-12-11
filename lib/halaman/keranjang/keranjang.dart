import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';

class Keranjang extends StatefulWidget{
  @override
  _KeranjangState createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.shopping_cart),
        backgroundColor: kPrimaryColor,
        title: Column(
          children: <Widget>[
            Text('Keranjang', style: GoogleFonts.varelaRound(fontSize: 20.0, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 12.0),
            Row(
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.scaleDown,
                          image: AssetImage('images/icons/contoh_obat.png'),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      width: 100.0,
                      child: Text(
                        "Tolak Angin",
                        style: GoogleFonts.varelaRound(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color: kGreyColor,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Icon(
                              Icons.remove,
                              color: kWhiteColor,
                              size: 15.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Text(
                            "1",
                            style: GoogleFonts.varelaRound(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Icon(
                            Icons.add,
                            color: kWhiteColor,
                            size: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}