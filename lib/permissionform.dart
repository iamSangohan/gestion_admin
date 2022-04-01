// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gestion_admin/constants.dart';

void main() {
  runApp(const Permission());
}

class Permission extends StatelessWidget {
  const Permission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PermissionForm(title: 'Demande de permission'),
    );
  }
}

class PermissionForm extends StatefulWidget {
  const PermissionForm({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<PermissionForm> createState() => _PermissionFormState();
}

class _PermissionFormState extends State<PermissionForm> {
  Widget _typePermissionForm() {
    // Liste deroulante
    Size size = MediaQuery.of(context).size;
    String dropdownValue = 'Vac';

    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: DropdownButtonFormField<String>(
        dropdownColor: Colors.blue,
        value: dropdownValue,
        elevation: 16,
        style: const TextStyle(color: Colors.white),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Vac', 'Con', 'Mal', 'Autre']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget _nomForm() {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Nom',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _gradeForm() {
    // Liste deroulante
    Size size = MediaQuery.of(context).size;
    String dropdownValue = 'Col';

    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: DropdownButtonFormField<String>(
        dropdownColor: Colors.blue,
        hint: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Select Item Type",
            style: TextStyle(color: Colors.white),
          ),
        ),
        value: dropdownValue,
        elevation: 16,
        style: const TextStyle(color: Colors.white),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Col', 'Cap', 'Cair', 'Lt']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget _nombreJourForm() {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: TextField(
        keyboardType: TextInputType.number,
        //inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Nombre de jour',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _dateRepriseForm() {
    // Calendrier
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: TextField(
        keyboardType: TextInputType.datetime,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Date de reprise',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _serviceForm() {
    // Liste deroulante
    Size size = MediaQuery.of(context).size;
    String dropdownValue = 'Dev';

    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: DropdownButtonFormField<String>(
        dropdownColor: Colors.blue,
        value: dropdownValue,
        elevation: 16,
        style: const TextStyle(color: Colors.white),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Dev', 'Rsx', 'Log', 'Adm']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget _autrePosteForm() {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Autre poste',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _villeForm() {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Ville',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _dateDepartForm() {
    // Calendrier
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: TextField(
        keyboardType: TextInputType.datetime,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Date de depart',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  Widget _statutForm() {
    // Liste deroulante
    Size size = MediaQuery.of(context).size;
    String dropdownValue = 'Stat1';

    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: DropdownButtonFormField<String>(
        dropdownColor: Colors.blue,
        value: dropdownValue,
        elevation: 16,
        style: const TextStyle(color: Colors.white),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Stat1', 'Stat2', 'Stat3', 'Stat4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget _motifForm() {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: kBoxDecorationStyle,
      width: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: TextField(
        maxLines: 8,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Entrez le motif de la demande',
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(24),
            child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  //vertical: 120.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _typePermissionForm(),
                    _nomForm(),
                    _gradeForm(),
                    _nombreJourForm(),
                    _dateRepriseForm(),
                    _serviceForm(),
                    _autrePosteForm(),
                    _villeForm(),
                    _dateDepartForm(),
                    _statutForm(),
                    _motifForm(),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      width: size.width * 0.7,
                      child: RaisedButton(
                          elevation: 5,
                          padding: const EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Colors.white,
                          child: Text(
                            'Valider',
                            style: TextStyle(
                              color: Color(0xFF527DAA),
                              letterSpacing: 1.5,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                          onPressed: () {}),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                )),
          ),
        ));
  }
}
