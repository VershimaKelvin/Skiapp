import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/provider/settingsProvider.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ChangeNotifierProvider(
        create: (BuildContext context)=>SettingsProvider(),
        child: Builder(
          builder: (context) {
            return Scaffold(
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
                          value: Provider.of<SettingsProvider>(context).getUnits(),
                            onChanged: (String value){
                            Provider.of<SettingsProvider>(context).setUnits(value);
                            },
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
                                  selected: Provider.of<SettingsProvider>(context).ifSwixSelected,
                                  onSelected: (bool value){
                                    Provider.of<SettingsProvider>(context,listen: false).ifSwixSelectedMethod(value);
                                  }),
                              FilterChip(label: Text('tokos'),
                                  selected: Provider.of<SettingsProvider>(context).ifTokosSelected,
                                  onSelected: (bool value){
                                Provider.of<SettingsProvider>(context,listen: false).ifTokosSelectedMethod(value);
                                  })
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
