import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

void Resume1()
async{
  var pdf = pw.Document();
  pdf.addPage(
      pw.Page(
          margin: pw.EdgeInsets.all(10),
          pageFormat: PdfPageFormat.a4,
          orientation: pw.PageOrientation.portrait,
          build: (pw.Context context){
            return
              pw.Column(
                  children: [
                    pw.Padding(padding: pw.EdgeInsets.all(10),),
                    pw.Text("Resume",style: pw.TextStyle(color: PdfColors.amber,fontSize: 40,fontWeight: pw.FontWeight.bold)),
                    pw.Align(alignment: pw.Alignment.topRight),
                    pw.Container(
                      height: 150,
                      width: 150,
                      // color: pdfColors.red,
                    ),

                  ]
              );
          })
  );
  Directory dir = await getApplicationSupportDirectory();

  File f1 = File("$dir/mypdf.pdf");

  print("==== ${f1.path}");
  f1.writeAsBytes(await pdf.save());


}