import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yaml/yaml.dart';


class AboutPage extends StatefulWidget {
  static const String routeName = '/about';
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  late String appVersion;

  @override
  void initState() {
    super.initState();
    _getVersion();
  }

  Future<void> _getVersion() async {
    String pubspecContent = await DefaultAssetBundle.of(context).loadString('pubspec.yaml');
    final Map<String, dynamic> pubspecYaml = loadYaml(pubspecContent);
    appVersion = pubspecYaml['version'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("App Version: $appVersion"),
            // Other about information
          ],
        ),
      ),
    );
  }
}