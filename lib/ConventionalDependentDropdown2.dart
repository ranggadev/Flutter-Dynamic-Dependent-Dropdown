//--- Github : https://github.com/ranggadev
//--- Let's visit My Github and give me your star and questions
//--- Code with ❤ by Rangga Saputra from Indonesia

//--- This code does not initialize global variable values


import 'package:flutter/material.dart';

class ConventionalDependentDropdown2 extends StatefulWidget {
  @override
  _ConventionalDependentDropdown2State createState() => _ConventionalDependentDropdown2State();
}

class _ConventionalDependentDropdown2State extends State<ConventionalDependentDropdown2> {

  //declaration variable provinces & cities
  List<DropdownModel> dropdownDatas = List<DropdownModel>();

  //declaration variable to store result of province & cities
  DropdownModel valueDropdownData;

  //declaration variable to store result of city
  String valueCity;

  @override
  void initState() {
    dropdownDatas.add(DropdownModel(
      "Aceh", 
      ["Bener Meriah", "Bireuen", "Gayo Lues", "	Nagan Raya", "Pidie"]
    ));
    dropdownDatas.add(DropdownModel(
      "Yogyakarta", 
      ["Bantul", "Gunungkidul", "Kulon Progo", "Sleman"]
    ));
    dropdownDatas.add(DropdownModel(
      "Bali", 
      ["Badung", "Bangli", "Buleleng"]
    ));
    dropdownDatas.add(DropdownModel(
      "Kalimantan Barat", 
      ["Pontianak", "Kubu Raya"]
    ));
    dropdownDatas.add(DropdownModel(
      "Papua", 
      ["Manokwari"]
    ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conventional Dynamic\nDependent Dropdown"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Provinces in Indonesia"),
            
            //the 1st Dropdown
            DropdownButton<DropdownModel>(
              value: valueDropdownData,
              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
              onChanged: (DropdownModel newValue) {
                setState(() {
                  valueDropdownData = newValue;
                  valueCity = null;
                });
              },
              items: dropdownDatas.map<DropdownMenuItem<DropdownModel>>((DropdownModel value) {
                return DropdownMenuItem<DropdownModel>(
                  value: value,
                  child: Text(value.provinces),
                );
              })
              .toList(),
            ),

            SizedBox(height: 20),

            Text("Cities in Province of Indonesia"),

            //the 2nd Dropdown
            if (valueDropdownData != null) //error handling when 1st Dropdown not selected yet
            DropdownButton<String>(
              value: valueCity,
              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
              onChanged: (String newValue) {
                setState(() {
                  valueCity = newValue;
                });
              },
              items: valueDropdownData.cities.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              })
              .toList(),
            )
          ],
        ),
      ),
    );
  }
}

//make model class
class DropdownModel {
  final String provinces; //this variable for the 1st Dropdown
  final List<String> cities; //this variable for the 2nd Dropdown

  DropdownModel(this.provinces, this.cities);
}