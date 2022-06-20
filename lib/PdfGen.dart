import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/Modalclass.dart';

void PdfGen(Modeldata data)
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
             child: pw.Row(
              children: [
                pw.Expanded(
                  flex: 4,
                  child: pw.Container(
                    height: double.infinity,
                    color: PdfColors.black,
                    child: pw.Padding(
                      padding: const pw.EdgeInsets.all(10.0),
                      child: pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start,children: [
                        pw.Center(child: pw.Text("${data.name}",style: pw.TextStyle(color: PdfColors.white,fontWeight: pw.FontWeight.bold,fontSize: 30),)),
                        pw.SizedBox(height: 15,),
                        pw.Center(
                          child: pw.Container(
                            height: 100,
                            width: 100,
                           //child: ,
                          ),
                        ),
                        pw.SizedBox(height: 15,),
                        pw.Text("${data.det}",style: pw.TextStyle(color: PdfColors.white,fontSize: 18),),
                        pw.SizedBox(height: 15,),
                        pw.Container(alignment: pw.Alignment.center,child: pw.Text("Contact",style: pw.TextStyle(color: PdfColors.white,fontWeight: pw.FontWeight.bold,fontSize: 30),)),
                        pw.SizedBox(height: 15,),
                        pw.Text("${data.gmail}",style: pw.TextStyle(color: PdfColors.white,fontSize: 18),),
                        pw.SizedBox(height: 15,),
                        pw.Text("${data.mno}",style: pw.TextStyle(color: PdfColors.white,fontSize: 22),),
                      ],
                      ),
                    ),

                  ),
                ),
                pw.Expanded(
                  flex:6,
                  child: pw.Container(
                    height: double.infinity,
                    color: PdfColors.white,
                    child: pw.Padding(
                        padding: const pw.EdgeInsets.all(10.0),
                      child: pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start,children: [
                        pw.Text(
                            "Education",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,fontSize: 28)),
                        pw.Container(
                          width: double.infinity,
                          height: 1,
                          color: PdfColors.black,
                        ),
                        pw.SizedBox(height: 15,),
                        pw.Text("${data.edu}",style: pw.TextStyle(color: PdfColors.black,fontSize: 18)),
                        pw.SizedBox(height: 20,),
                        pw.Text(
                            "Personal Skill",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,fontSize: 28)),
                        pw.Container(
                          width: double.infinity,
                          height: 1,
                          color: PdfColors.black,
                        ),
                        pw.SizedBox(height: 15,),
                        pw.Text("${data.skil}",style: pw.TextStyle(color: PdfColors.black,fontSize: 18)),
                        pw.SizedBox(height: 15,),
                        pw.Text(
                            "Professional Skill",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,fontSize: 28)),
                        pw.Container(
                          width: double.infinity,
                          height: 1,
                          color: PdfColors.black,
                        ),
                        pw.SizedBox(height: 15,),
                        pw.Text("${data.pskil}",style: pw.TextStyle(color: PdfColors.black,fontSize: 18)),
                        pw.SizedBox(height: 15,),
                        pw.Text(
                            "Job Experience",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,fontSize: 28)),
                        pw.Container(
                          width: double.infinity,
                          height: 1,
                          color: PdfColors.black,
                        ),
                        pw.SizedBox(height: 15,),
                        pw.Text("${data.exp}",style: pw.TextStyle(color: PdfColors.black,fontSize: 18)),
                        pw.SizedBox(height: 15,),
                        pw.Text(
                            "Langauge",style: pw.TextStyle(color: PdfColors.black,fontWeight: pw.FontWeight.bold,fontSize: 28)),
                        pw.Container(
                          width: double.infinity,
                          height: 1,
                          color: PdfColors.black,
                        ),
                        pw.SizedBox(height: 15,),
                        pw.Text("${data.lang}",style: pw.TextStyle(color: PdfColors.black,fontSize: 18)),
                      ],),
                    ),
                  ),
                ),
              ],
            ),
          );
    })
  );

  Directory? dir = await getDownloadsDirectory();

  File f1 = File("$dir/Resume1.pdf");

  print("==== ${f1.path}");
  f1.writeAsBytes(await pdf.save());


}