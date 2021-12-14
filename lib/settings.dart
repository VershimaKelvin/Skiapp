import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('settings'),
        ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Units'),
                  DropdownButton<String>(
                    elevation: 0,
                    value: 'Imperial',
                      onChanged: (String value){},
                    items: [
                      'Imperial',
                      'Metric'
                    ].map<DropdownMenuItem<String>>((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                          child: Text(value),
                      );
                    }
                    ).toList()

                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Wax Lines'),
                  Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: [
                        FilterChip(label: Text('Swix'),
                            selected: false,
                            onSelected: (bool value){
                            }),
                        FilterChip(label: Text('tokos'),
                            selected: true,
                            onSelected: (bool value){
                            })
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
