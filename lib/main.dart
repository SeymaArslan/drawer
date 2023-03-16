import 'package:drawer_kullanimi/SayfaBir.dart';
import 'package:drawer_kullanimi/SayfaIki.dart';
import 'package:drawer_kullanimi/SayfaUc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // Drawer aynı ekran üzerinde birden fazla sayfa göstermek için kullandığımız bir yapıdır
  // Parmak hareketine duyarlı şekilde açılır ve kapanabilir, geri tuşu ile kapatılabilir

  // alt yapı bir liste var, bir de listedeki indeksleri tutan değişken ve değişken sayesinde diğer sayfalara geçiş yapacağız
  var sayfaListe = [SayfaBir(),SayfaIki(),SayfaUc()];
  int secilenIndeks = 0;  // burayı açılan/seçilen yaptık anasayfa gibi düşünebiliriz.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Kullanımı"),
      ),
      body: sayfaListe[secilenIndeks],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // sayesinde açılan yer yukarıdan boşluksuz 0 bir şekilde açılacak
          children: [
            DrawerHeader( // başlık
              child: Text("Başlık Tasarımı", style: TextStyle(color: Colors.white70, fontSize: 30),),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
            ListTile( // satır tasarımı oluşturmak için kullanacağız
              title: Text("Sayfa Bir"),
              onTap: (){
                setState(() {
                  secilenIndeks = 0;
                });
                Navigator.pop(context); // herhangi birini seçtiğimiz zaman geçiş yapılan sayfayı görebilmemiz için  drawer ı kapatmamız gerekir.
              },
            ),
            ListTile( // satır tasarımı oluşturmak için kullanacağız
              title: Text("Sayfa İki", style: TextStyle(color: Colors.pink),),
              onTap: (){
                setState(() {
                  secilenIndeks = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile( // satır tasarımı oluşturmak için kullanacağız
              title: Text("Sayfa Üç"),
              leading: Icon(Icons.looks_3, color: Colors.orange,),
              onTap: (){
                setState(() {
                  secilenIndeks = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
