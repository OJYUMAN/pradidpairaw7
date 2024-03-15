import 'package:flutter/material.dart';


var keyboardwidth = 0.0;
var chan = "";
List<Widget> boxes = [];
var count = 0;
var MT = 250; //1000milisec/4
List<String> strings = [];
var myController = TextEditingController();
var elements = <String>{};
const List<Widget> vegetables = <Widget>[
  Icon(Icons.stop_rounded),
  Icon(Icons.play_arrow_rounded),
  Icon(Icons.skip_previous_rounded),
];
//var labelarr = []; //ตัวแปรสําหรับเก็นโน้ตที่ไม่เกี่ยวกับวิตเจ็ต
var labelarr2 = [];

double ranadsize = 0;
bool showkeyboard = false;
double custFontSize = 13;
double notedistance = 2;
List<Widget> textarr = []; //labelarray in swift
bool isSwitched = false;
bool isSwitched2 = false;
final List<bool> _selectedVegetables = <bool>[false, false, false];
bool vertical = false;
List<Widget> textWidgetList = [];
List<Widget> tableElements = [];
List<Widget> pageElements = [];
bool JK = false;
bool showpp1 = false;
bool editin = false;
bool G = false,
    A = false,
    B = false,
    C1 = false,
    D1 = false,
    E1 = false,
    F1 = false,
    G1 = false,
    A0 = false,
    B0 = false,
    C = false,
    D = false,
    E = false,
    E0 = false,
    F = false,
    F0 = false,
    G0 = false,
    Down = false,
    Up = false,
    Delete = false;
String io = "";
var ma = 0; //เป็นค่าที่บอกว่าตอนนี้เหลืองอยู่หน้าไหน
var yy = 89.00;
var xx = 33.00;
var zz = 0.00;
var ppcount = 0.00; //ตําแหน่งของเหลือง
var table = 0;
int Tempo = 60;
bool hay = false;
Stopwatch _stopwatch = Stopwatch();
//late Timer _timer;
Color ppcolor = Colors.yellow;
Color cccolor = Colors.black;
Color cccolor2 = Colors.black;
var filePath = "";
var lebelsave = "";
var krosave = "";
var lebelsave2 = "";
var fakefile = "";
var title = "";
var instrument = "";
var composer = "";
var page = 0;
var ppheight = 34.00;
var intru = 0;
int lastma = 0;
double scaleFactor = 1.0;
double boxsize = 20.0;
List<Widget> pages = [];
var labelarr = [];
var kroarr = [];



var scale = 1.0;
double top = 0.0;
double left = 0.0;
