import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Flutter Tabbed View',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbed View'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Beranda'),
              Tab(icon: Icon(Icons.person), text: 'Profil'),
              Tab(icon: Icon(Icons.settings), text: 'Pengaturan'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
// Isi dari Tab 1
            Container(
              padding: EdgeInsets.all(16),
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/berita.webp',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text('Berita Capres Terkini'),
                      subtitle: Text(
                          'Perkembangan terbaru dalam Perhelatan Pemilihan Presiden!.'),
                    ),
                    ButtonBar(
                      children: [
                        TextButton(
                          onPressed: () {
                            // Aksi ketika tombol ditekan
                          },
                          child: Text('Baca Selengkapnya'),
                        ),
                      ],
                    ),
                    Divider(),
                    Image.asset(
                      'images/berita2.webp',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text('Update Pemilu 2024!'),
                      subtitle: Text(
                          'Menyajikan berita terkini mengenao Pemilu 2024!.'),
                    ),
                    ButtonBar(
                      children: [
                        TextButton(
                          onPressed: () {
                            // Aksi ketika tombol ditekan
                          },
                          child: Text('Baca Selengkapnya'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
// Isi dari Tab 2
            Container(
              padding: EdgeInsets.all(16),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Nama Pengguna'),
                      subtitle: Text('Kiki Darmawan'),
                      leading: Icon(Icons.person),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Email'),
                      subtitle: Text('kikiedarmawan@gmail.com'),
                      leading: Icon(Icons.email),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Nomor Telepon'),
                      subtitle: Text('+62815-7111-413'),
                      leading: Icon(Icons.phone),
                    ),
                    Divider(),
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol ditekan (misalnya, mengedit profil)
                      },
                      child: Text('Edit Profil'),
                    ),
                  ],
                ),
              ),
            ),
// Isi dari Tab 3
            // Konten untuk Tab Pengaturan
            Container(
              padding: EdgeInsets.all(16),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Notifikasi'),
                      subtitle: Text('Aktifkan notifikasi'),
                      trailing: Switch(
                        value:
                            true, // Sesuaikan dengan status notifikasi yang sebenarnya
                        onChanged: (bool value) {
                          // Aksi ketika status switch berubah
                        },
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Tema'),
                      subtitle: Text('Pilih tema aplikasi'),
                      trailing: DropdownButton<String>(
                        value: 'Light', // Sesuaikan dengan tema yang sebenarnya
                        onChanged: (String? newValue) {
                          // Aksi ketika tema dipilih
                        },
                        items: ['Light', 'Dark']
                            .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Bahasa'),
                      subtitle: Text('Pilih bahasa aplikasi'),
                      trailing: DropdownButton<String>(
                        value:
                            'English', // Sesuaikan dengan bahasa yang sebenarnya
                        onChanged: (String? newValue) {
                          // Aksi ketika bahasa dipilih
                        },
                        items: ['English', 'Indonesian']
                            .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
