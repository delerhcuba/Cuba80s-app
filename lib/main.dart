import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: RadioApp(),
);
}
}
class RadioApp extends StatefulWidget {
@override
_RadioAppState createState() => _RadioAppState();
}
class _RadioAppState extends State<RadioApp> {
bool _isPlaying = false;
void _togglePlay() {
setState(() {
_isPlaying = !_isPlaying;
});
}
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.black,
appBar: AppBar(
backgroundColor: Colors.black,
title: Text(
'Cuba80s Radio',
style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
),
actions: [
IconButton(
icon: Icon(Icons.menu, color: Colors.white),
onPressed: () {
// Lógica para menú si se desea
},
)
],
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
// Carátula del disco (placeholder)
Container(
width: 150,
height: 150,
decoration: BoxDecoration(
color: Colors.grey, // Placeholder de la carátula
shape: BoxShape.circle,
),
child: Icon(
Icons.music_note,
size: 70,
color: Colors.white,
),
),
SizedBox(height: 20),
// Nombre del grupo y canción
Text(
'Grupo: Soda Stereo', // Aquí va el nombre del grupo
style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
),
SizedBox(height: 10),
Text(
'Canción: En el Borde', // Aquí va el nombre de la canción
style: TextStyle(color: Colors.white, fontSize: 18),
),
SizedBox(height: 30),
// Botón Play/Pause
ElevatedButton(
onPressed: _togglePlay,
child: Text(_isPlaying ? 'Pause' : 'Play'),
style: ElevatedButton.styleFrom(
primary: Colors.pink, // Color del botón
padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
textStyle: TextStyle(fontSize: 20),
),
),
],
),
),
);
}
}
