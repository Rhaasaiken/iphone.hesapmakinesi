import 'package:flutter/material.dart';

import 'container.dart';


void main() {
  runApp(HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  bool secili = false;
  bool virgul = false;
  String isaret = '';
  int islemSayisi = 0;
  double _size = 90;
  int index1 = 1;
  int index2 = 1;
  int basilan = 0;
  int index3 = 1;
  bool acmicmi = false;
  late double _sonuc1 = 0;
  late double _sonuc2 = 0;
  late double _sonuc = 0;
  late String _virgulYani =
  _sonuc.toString().split('.')[1];
  late int ssonuc = _virgulYani.length;
  void sayiEkle1() {
    setState(() {_sonuc1.toString().length==11?null:
    _size = index1 + index3 == 1 ||
        index1 + index3 == 2 ||
        index1 + index3 == 3 ||
        index1 + index3 == 4||index1 + index3 == 5 || index1 + index3 == 6 ?90: index1 + index3 == 7
        ? 85
        : index1 + index3 == 8
        ? 80
        : index1 + index3 == 9
        ? _size = 70.25
        : virgul==true?62.5:65;
    virgul == false
        ? _sonuc1 = index1 == 1
        ? _sonuc1 + basilan
        : index1 == 2
        ? _sonuc1 * 10 + basilan
        : index1 == 3
        ? _sonuc1 * 10 + basilan
        : index1 == 4
        ? _sonuc1 * 10 + basilan
        : index1 == 5
        ? _sonuc1 * 10 + basilan
        : index1 == 6
        ? _sonuc1 * 10 + basilan
        : index1 == 7
        ? _sonuc1 * 10 + basilan
        : index1 == 8
        ? _sonuc1 * 10 + basilan
        : index1 == 9
        ? _sonuc1 * 10 + basilan
        : _sonuc1 + 0
        : _sonuc1 = index3 == 1
        ? _sonuc1 + basilan / 10
        : index3 == 2
        ? _sonuc1 + basilan / 100
        : index3 == 3
        ? _sonuc1 + basilan / 1000
        : index3 == 4
        ? _sonuc1 + basilan / 10000
        : index3 == 5
        ? _sonuc1 + basilan / 100000
        : index3 == 6
        ? _sonuc1 + basilan / 1000000
        : index3 == 7
        ? _sonuc1 + basilan / 10000000
        : index3 == 8
        ? _sonuc1 + basilan / 100000000
        : index3 == 9
        ? _sonuc1 + basilan / 1000000000
        : _sonuc1 + 0;
    _sonuc = _sonuc1;
    virgul == false ? index1++ : index3++;

    print(_sonuc1.toString().length);});
  }

  void sayiEkle2() {
    setState(() {_sonuc2.toString().length==11?null:
    _size = index2 + index3 == 1 ||
        index2 + index3 == 2 ||
        index2 + index3 == 3 ||
        index2 + index3 == 4||index2 + index3 == 5 || index2 + index3 == 6 ?90: index2 + index3 == 7
        ? 85
        : index2 + index3 == 8
        ? 80
        : index2 + index3 == 9
        ? _size = 70.25
        : virgul==true?62.5:65;
    virgul == false
        ? _sonuc2 = index2 == 1
        ? _sonuc2 + basilan
        : index2 == 2
        ? _sonuc2 * 10 + basilan
        : index2 == 3
        ? _sonuc2 * 10 + basilan
        : index2 == 4
        ? _sonuc2 * 10 + basilan
        : index2 == 5
        ? _sonuc2 * 10 + basilan
        : index2 == 6
        ? _sonuc2 * 10 + basilan
        : index2 == 7
        ? _sonuc2 * 10 + basilan
        : index2 == 8
        ? _sonuc2 * 10 + basilan
        : index2 == 9
        ? _sonuc2 * 10 + basilan
        : _sonuc2 + 0
        : _sonuc2 = index3 == 1
        ? _sonuc2 + basilan / 10
        : index3 == 2
        ? _sonuc2 + basilan / 100
        : index3 == 3
        ? _sonuc2 + basilan / 1000
        : index3 == 4
        ? _sonuc2 + basilan / 10000
        : index3 == 5
        ? _sonuc2 + basilan / 100000
        : index3 == 6
        ? _sonuc2 + basilan / 1000000
        : index3 == 7
        ? _sonuc2 + basilan / 10000000
        : index3 == 8
        ? _sonuc2 + basilan / 100000000
        : index3 == 9
        ? _sonuc2 + basilan / 1000000000
        : _sonuc2 + 0;
    _sonuc = _sonuc2;
    virgul == false ? index2++ : index3++;

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.bottomRight,
                    child: AnimatedSize(
                        duration: Duration(microseconds: 0),
                        curve: Curves.ease,
                        child: Text(maxLines: 1,
                          virgul==true?_sonuc
                              .toStringAsFixed(
                              index3-1)
                              .replaceAll('.', ',')
                              .replaceAllMapped(
                              RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                  (Match m) => '${m[1]}.'):_sonuc.toInt() == _sonuc
                              ? _sonuc
                              .toInt()
                              .toString()
                              .replaceAll('.', ',')
                              .replaceAllMapped(
                              RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                  (Match m) => '${m[1]}.')
                              : _sonuc
                              .toStringAsFixed(
                              islemSayisi==0?2:ssonuc)
                              .replaceAll('.', ',')
                              .replaceAllMapped(
                              RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                  (Match m) => '${m[1]}.'),
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: _size),
                        ))),
              ),
              Expanded(
                flex: 5,
                child: Wrap(
                  spacing: MediaQuery.of(context).size.width * 0.036,
                  runSpacing: MediaQuery.of(context).size.width * 0.036,
                  children: [
                    ContainerButtons(
                        islem: () {
                          setState(() {
                            if (acmicmi == false) {
                              _size = 90;
                              secili = false;
                              _sonuc = 0;
                              _sonuc1 = 0;
                              _sonuc2 = 0;
                              islemSayisi = 0;
                              index2 = 1;
                              index1 = 1;
                              index3 = 1;
                              virgul = false;
                            } else {
                              _size = 90;
                              _sonuc = 0;
                              index2 = 1;
                              index1 = 1;
                              index3 = 1;
                              virgul = false;
                              islemSayisi == 0 ? _sonuc1 = 0 : _sonuc2 = 0;
                              acmicmi = false;
                            };
                          });
                        },
                        color: Color(0xffbdbdbd),
                        child: Text(
                          acmicmi == false ? 'AC' : 'C',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff212121)),
                        )),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          _sonuc = _sonuc * -1;
                        });
                      },
                      color: Color(0xffbdbdbd),
                      child: Text(
                        '+/-',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff212121)),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {index3=index3+2;
                        secili = false;
                        _sonuc = _sonuc / 100;
                        _size=_sonuc.toString().length==6||_sonuc.toString().length==5||_sonuc.toString().length==4||_sonuc.toString().length==3||_sonuc.toString().length==2||_sonuc.toString().length==1?90:_sonuc.toString().length==7?85:_sonuc.toString().length==8?80:_sonuc.toString().length==9?70.25:_sonuc.toString().length==10?_sonuc<1&&_sonuc!=_sonuc.toInt()?61:65:61;
                        ssonuc=_virgulYani.length;});
                      },
                      color: Color(0xffbdbdbd),
                      child: Text(
                        '%',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff212121)),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = true;
                          isaret == ''
                              ? null
                              : isaret == 'çarpı'
                              ? _sonuc = _sonuc1 * _sonuc2
                              : isaret == 'bölme'
                              ? _sonuc = _sonuc1 / _sonuc2
                              : isaret == 'artı'
                              ? _sonuc = _sonuc1 + _sonuc2
                              : isaret == 'eksi'
                              ? _sonuc = _sonuc1 - _sonuc2
                              : null;
                          _sonuc1 = _sonuc;
                          isaret = 'bölme';
                          islemSayisi++;
                          _sonuc2 = 0;
                          index2 = 1;
                          virgul=false;
                          index3=1;
                          _size=_sonuc.toString().length==6||_sonuc.toString().length==5||_sonuc.toString().length==4||_sonuc.toString().length==3||_sonuc.toString().length==2||_sonuc.toString().length==1?90:_sonuc.toString().length==7?85:_sonuc.toString().length==8?80:_sonuc.toString().length==9?70.25:_sonuc.toString().length==10?_sonuc<1&&_sonuc!=_sonuc.toInt()?61:65:61;
                        });
                      },
                      color: isaret == 'bölme' && secili == true
                          ? Colors.white
                          : Color(0xfffa9712),
                      child: Text(
                        '÷',
                        style: TextStyle(
                            fontSize: 45,
                            color: isaret == 'bölme' && secili == true
                                ? Color(0xfffa9712)
                                : Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          acmicmi = true;
                          basilan = 7;
                          _sonuc = islemSayisi == 0 ? _sonuc1 : _sonuc2;
                          virgul == true ? index3 + 1 : null;
                        });
                        _sonuc == _sonuc1 ? sayiEkle1() : sayiEkle2();
                      },
                      color: Color(0xff424242),
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          acmicmi = true;
                          basilan = 8;
                          _sonuc = islemSayisi == 0 ? _sonuc1 : _sonuc2;
                          virgul == true ? index3 + 1 : null;
                        });
                        _sonuc == _sonuc1 ? sayiEkle1() : sayiEkle2();
                      },
                      color: Color(0xff424242),
                      child: Text(
                        '8',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          acmicmi = true;
                          basilan = 9;
                          _sonuc = islemSayisi == 0 ? _sonuc1 : _sonuc2;
                          virgul == true ? index3 + 1 : null;
                        });
                        _sonuc == _sonuc1 ? sayiEkle1() : sayiEkle2();
                      },
                      color: Color(0xff424242),
                      child: Text(
                        '9',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = true;
                          isaret == ''
                              ? null
                              : isaret == 'çarpı'
                              ? _sonuc = _sonuc1 * _sonuc2
                              : isaret == 'bölme'
                              ? _sonuc = _sonuc1 / _sonuc2
                              : isaret == 'artı'
                              ? _sonuc = _sonuc1 + _sonuc2
                              : isaret == 'eksi'
                              ? _sonuc = _sonuc1 - _sonuc2
                              : null;
                          _sonuc1 = _sonuc;
                          isaret = 'çarpı';
                          islemSayisi++;
                          _sonuc2 = 0;
                          index2 = 1;
                          virgul = false;
                          _size=_sonuc.toString().length==6||_sonuc.toString().length==5||_sonuc.toString().length==4||_sonuc.toString().length==3||_sonuc.toString().length==2||_sonuc.toString().length==1?90:_sonuc.toString().length==7?85:_sonuc.toString().length==8?80:_sonuc.toString().length==9?70.25:_sonuc.toString().length==10?_sonuc<1&&_sonuc!=_sonuc.toInt()?61:65:61;});
                      },
                      color: isaret == 'çarpı' && secili == true
                          ? Colors.white
                          : Color(0xfffa9712),
                      child: Text(
                        '×',
                        style: TextStyle(
                            fontSize: 50,
                            color: isaret == 'çarpı' && secili == true
                                ? Color(0xfffa9712)
                                : Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          acmicmi = true;
                          basilan = 4;
                          _sonuc = islemSayisi == 0 ? _sonuc1 : _sonuc2;
                          virgul == true ? index3 + 1 : null;
                        });
                        _sonuc == _sonuc1 ? sayiEkle1() : sayiEkle2();
                      },
                      color: Color(0xff424242),
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          acmicmi = true;
                          basilan = 5;
                          _sonuc = islemSayisi == 0 ? _sonuc1 : _sonuc2;
                          virgul == true ? index3 + 1 : null;
                        });
                        _sonuc == _sonuc1 ? sayiEkle1() : sayiEkle2();
                      },
                      color: Color(0xff424242),
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          acmicmi = true;
                          basilan = 6;
                          _sonuc = islemSayisi == 0 ? _sonuc1 : _sonuc2;
                          virgul == true ? index3 + 1 : null;
                        });
                        _sonuc == _sonuc1 ? sayiEkle1() : sayiEkle2();
                      },
                      color: Color(0xff424242),
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = true;
                          isaret == ''
                              ? null
                              : isaret == 'çarpı'
                              ? _sonuc = _sonuc1 * _sonuc2
                              : isaret == 'bölme'
                              ? _sonuc = _sonuc1 / _sonuc2
                              : isaret == 'artı'
                              ? _sonuc = _sonuc1 + _sonuc2
                              : isaret == 'eksi'
                              ? _sonuc = _sonuc1 - _sonuc2
                              : null;
                          _sonuc1 = _sonuc;
                          isaret = 'eksi';
                          islemSayisi++;
                          _sonuc2 = 0;
                          index2 = 1;
                          virgul = false;
                          _size=_sonuc.toString().length==6||_sonuc.toString().length==5||_sonuc.toString().length==4||_sonuc.toString().length==3||_sonuc.toString().length==2||_sonuc.toString().length==1?90:_sonuc.toString().length==7?85:_sonuc.toString().length==8?80:_sonuc.toString().length==9?70.25:_sonuc.toString().length==10?_sonuc<1&&_sonuc!=_sonuc.toInt()?61:65:61;});
                      },
                      color: isaret == 'eksi' && secili == true
                          ? Colors.white
                          : Color(0xfffa9712),
                      child: Text(
                        '-',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w300,
                            color: isaret == 'eksi' && secili == true
                                ? Color(0xfffa9712)
                                : Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          acmicmi = true;
                          basilan = 1;
                          _sonuc = islemSayisi == 0 ? _sonuc1 : _sonuc2;
                          virgul == true ? index3 + 1 : null;
                        });
                        _sonuc == _sonuc1 ? sayiEkle1() : sayiEkle2();
                      },
                      color: Color(0xff424242),
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          acmicmi = true;
                          basilan = 2;
                          _sonuc = islemSayisi == 0 ? _sonuc1 : _sonuc2;
                          virgul == true ? index3 + 1 : null;
                          print(index3);
                        });
                        _sonuc == _sonuc1 ? sayiEkle1() : sayiEkle2();
                      },
                      color: Color(0xff424242),
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          acmicmi = true;
                          basilan = 3;
                          _sonuc = islemSayisi == 0 ? _sonuc1 : _sonuc2;
                          virgul == true ? index3 + 1 : null;
                        });
                        _sonuc == _sonuc1 ? sayiEkle1() : sayiEkle2();
                      },
                      color: Color(0xff424242),
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = true;
                          isaret == ''
                              ? null
                              : isaret == 'çarpı'
                              ? _sonuc = _sonuc1 * _sonuc2
                              : isaret == 'bölme'
                              ? _sonuc = _sonuc1 / _sonuc2
                              : isaret == 'artı'
                              ? _sonuc = _sonuc1 + _sonuc2
                              : isaret == 'eksi'
                              ? _sonuc = _sonuc1 - _sonuc2
                              : null;
                          _sonuc1 = _sonuc;
                          isaret = 'artı';
                          islemSayisi++;
                          _sonuc2 = 0;
                          index2 = 1;
                          virgul = false;
                          _size=_sonuc.toString().length==6||_sonuc.toString().length==5||_sonuc.toString().length==4||_sonuc.toString().length==3||_sonuc.toString().length==2||_sonuc.toString().length==1?90:_sonuc.toString().length==7?85:_sonuc.toString().length==8?80:_sonuc.toString().length==9?70.25:_sonuc.toString().length==10?_sonuc<1&&_sonuc!=_sonuc.toInt()?61:65:61;});
                      },
                      color: isaret == 'artı' && secili == true
                          ? Colors.white
                          : Color(0xfffa9712),
                      child: Text(
                        '+',
                        style: TextStyle(
                            fontSize: 50,
                            color: isaret == 'artı' && secili == true
                                ? Color(0xfffa9712)
                                : Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1 - 10),
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width * 0.4 +
                          MediaQuery.of(context).size.width * 0.036,
                      height: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          color: Color(0xff424242),
                          borderRadius: BorderRadius.circular(360)),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              secili = false;
                              acmicmi = true;
                              basilan = 0;
                              _sonuc = islemSayisi == 0 ? _sonuc1 : _sonuc2;
                            });
                            _sonuc == _sonuc1 ? sayiEkle1() : sayiEkle2();
                          },
                          child: Text(
                            '0',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          )),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = false;
                          virgul = true;
                          index3 = 1;
                        });
                      },
                      color: Color(0xff424242),
                      child: Text(
                        ',',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    ContainerButtons(
                      islem: () {
                        setState(() {
                          secili = true;
                          isaret == ''
                              ? null
                              : isaret == 'çarpı'
                              ? _sonuc = _sonuc1 * _sonuc2
                              : isaret == 'bölme'
                              ? _sonuc = _sonuc1 / _sonuc2
                              : isaret == 'artı'
                              ? _sonuc = _sonuc1 + _sonuc2
                              : isaret == 'eksi'
                              ? _sonuc = _sonuc1 - _sonuc2
                              : null;
                          _sonuc1 = _sonuc;
                          isaret = 'eşittir';
                          index2 = 1;
                          virgul = false;
                          print(ssonuc);
                          print(_virgulYani);
                          _size=_sonuc.toString().length==6||_sonuc.toString().length==5||_sonuc.toString().length==4||_sonuc.toString().length==3||_sonuc.toString().length==2||_sonuc.toString().length==1?90:_sonuc.toString().length==7?85:_sonuc.toString().length==8?80:_sonuc.toString().length==9?70.25:_sonuc.toString().length==10?_sonuc<1&&_sonuc!=_sonuc.toInt()?61:65:61;});
                      },
                      color: isaret == 'eşittir' && secili == true
                          ? Colors.white
                          : Color(0xfffa9712),
                      child: Text(
                        '=',
                        style: TextStyle(
                            fontSize: 50,
                            color: isaret == 'eşittir' && secili == true
                                ? Color(0xfffa9712)
                                : Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}