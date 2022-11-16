import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends SearchDelegate {
  List<String> data = [
    'android',
    'najm',
    'app',
    'web',
    'web-design',
    'web-dev',
    'laravel',
    'php',
    'flutter',
    'kotlin',
    'java',
    'react',
    'vue',
    'javascript',
    'faisal',
    'mummar',
    'junaid',
    'hammad',
    'ali',
    'molabux',
    'mongodb',
    'firebase',
    'mysql',
    'sql',
    'bootstrap',
    'html',
    'css',
    'car',
    'cow',
    'python',
    'django',
  ];

  List<String> recentSearch = [
    'bootstrap',
    'html',
    'css',
    'python',
    'firebase',
    'django',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('data');
    // if (query != null && data.contains(query.toLowerCase())) {
    //   return ListTile(
    //     title: Text(query),
    //     onTap: () {},
    //   );
    // } else if (query == "") {
    //   return Text("");
    // } else {
    //   return ListTile(
    //     title: Text("No results found"),
    //     onTap: () {},
    //   );
    //   }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionlist = query.isEmpty
        ? recentSearch
        : data.where((p) => p.startsWith(query.toLowerCase())).toList();

    return ListView.builder(
        itemCount: suggestionlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: RichText(
              text: TextSpan(
                text: suggestionlist[index].substring(0, query.length),
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                      text: suggestionlist[index].substring(query.length),
                      style: GoogleFonts.poppins(color: Colors.black54)),
                ],
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: () {},
          );
        });
  }
}
