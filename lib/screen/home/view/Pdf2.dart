import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/screen/home/view/Modalclass.dart';

void Pdf2(Modeldata data)
async{
  var pdf = pw.Document();
  pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.portrait,
          build: (pw.Context context){
          return
            pw.Container(
                child: pw.Column(
                  children: [
                    pw.Align(
                      alignment: pw.Alignment.topRight,
                      child: pw.Container(
                        padding: pw.EdgeInsets.all(10),
                        height: 160,
                        width: 150,
                        //child: pw.Image.file(r2.f1,fit: BoxFit.fill,),
                      ),
                    ),
                    pw.Row(
                      children: [
                        pw.Container(
                          padding: pw.EdgeInsets.only(left: 30),
                          child: pw.Text(
                              "Name :", style: pw.TextStyle(color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 28)),
                        ),
                        pw.SizedBox(width: 20,),
                        pw.Text("${data.name}", style: pw.TextStyle(color: PdfColors.black, fontSize: 22),),
                      ],
                    ),
                    pw.Container(
                      width: double.infinity,
                      height: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      children: [
                        pw.Container(
                          padding: pw.EdgeInsets.only(left: 30),
                          child: pw.Text(
                              "Contact :", style: pw.TextStyle(color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 28)),
                        ),
                        pw.SizedBox(width: 20,),
                        pw.Text("${data.mno}", style: pw.TextStyle(color: PdfColors.black, fontSize: 22),),
                      ],
                    ),
                    pw.Container(
                      width: double.infinity,
                      height: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      children: [
                        pw.Container(
                          padding: pw.EdgeInsets.only(left: 30),
                          child: pw.Text(
                              "Location :", style: pw.TextStyle(color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 28)),
                        ),
                        pw.SizedBox(width: 20,),
                        pw.Text("${data.selectcity}", style: pw.TextStyle(color: PdfColors.black, fontSize: 22),),
                      ],
                    ),
                    pw.Container(
                      width: double.infinity,
                      height: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        pw.Text(
                            "Email :", style: pw.TextStyle(color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 28)),
                      ],
                    ),
                    pw.Container(
                      width: double.infinity,
                      height: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Align(
                        alignment: pw.Alignment.center,child: pw.Text("${data.gmail}", style: pw.TextStyle(color: PdfColors.black, fontSize: 22),)),
                    pw.Container(
                      width: double.infinity,
                      height: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        pw.Container(
                          alignment: pw.Alignment.center,
                          child: pw.Text(
                              "Details :", style: pw.TextStyle(color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 28)),
                        ),
                      ],
                    ),
                    pw.Container(
                      width: double.infinity,
                      height: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(left: 20),
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          pw.Text("${data.det}", style: pw.TextStyle(color: PdfColors.black, fontSize: 22),),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        pw.Text("Gender",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 30),),
                        pw.Text("(",style: pw.TextStyle(fontSize: 27),),
                        //pw.Icon(pw.Icons.male,size: 30,),
                        pw.Text(")",style: pw.TextStyle(fontSize: 27),),
                      ],
                    ),
                    pw.Container(
                      width: double.infinity,
                      height: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(height: 15,),
                    pw.Text("${data.select}",style: pw.TextStyle(
                        color: PdfColors.black, fontSize: 18)),
                    pw.SizedBox(height: 15,),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        pw.Container(
                          alignment: pw.Alignment.center,
                          child: pw.Text(
                              "Education :", style: pw.TextStyle(color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 28)),
                        ),
                      ],
                    ),
                    pw.Container(
                      width: double.infinity,
                      height: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Align(
                        alignment: pw.Alignment.center,child: pw.Text("${data.edu}", style: pw.TextStyle(color: PdfColors.black, fontSize: 22),)),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        pw.Container(
                          alignment: pw.Alignment.center,
                          child: pw.Text(
                              "Personal Skills :", style: pw.TextStyle(color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 28)),
                        ),
                      ],
                    ),
                    pw.Container(
                      width: double.infinity,
                      height: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Align(
                        alignment: pw.Alignment.center,child: pw.Text("${data.pskil}", style: pw.TextStyle(color: PdfColors.black, fontSize: 22),)),
                    pw.SizedBox(height: 10,),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        pw.Container(
                          alignment: pw.Alignment.center,
                          child: pw.Text(
                              "Langauge :", style: pw.TextStyle(color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 28)),
                        ),
                      ],
                    ),
                    pw.Container(
                      width: double.infinity,
                      height: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(height: 10,),
                    pw.Align(
                        alignment: pw.Alignment.center,child: pw.Text("${data.lang}", style: pw.TextStyle(color: PdfColors.black, fontSize: 22),)),
                    pw.SizedBox(height: 10,)
                  ],
                ),
            );
          },
      ),
  );

  Directory? dir = await getDownloadsDirectory();

  File f1 = File("$dir/Resume2.pdf");

  print("==== ${f1.path}");
  f1.writeAsBytes(await pdf.save());

}