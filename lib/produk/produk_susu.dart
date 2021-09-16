import 'package:flutter/cupertino.dart';

class Produk extends StatefulWidget{
  Produk({Key key, this.idKategori}) : super(key: key);

  int idKategori;

  @override
  _ProdukState createState() => _ProdukState();
}

class _ProdukState extends State<Produk>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.widget.idKategori.toString()),
    );
  }
}