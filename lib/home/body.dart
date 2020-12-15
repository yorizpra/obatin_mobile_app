import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/kategori/kategori.dart';
import 'package:obatin_app/home/unggah_resep.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset('images/iklan/iklan1.png'),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cari Berdasarkan Kategori", style: GoogleFonts.varelaRound(fontSize: 18.0, fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
              Categories(),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Punya Resep Dokter?", style: GoogleFonts.varelaRound(fontSize: 18, fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
              Image.asset('images/iklan/iklan3.png'),
              Center(
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Unggah()));
                  },
                  label: Text('Unggah', style: GoogleFonts.varelaRound(fontSize: 15, fontWeight: FontWeight.w600),),
                  color: Colors.redAccent,
                  icon: Icon(
                    Icons.cloud_upload, color: kWhiteColor,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
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