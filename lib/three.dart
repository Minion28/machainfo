import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  List<String> titles = [];
  List<String?> urlImages = [];

  @override
  void initState() {
    super.initState();

    getWebsiteData();
  }

  Future getWebsiteData() async {
    final url = Uri.parse('https://machakos.go.ke/page/3/');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);

    final titles = html
        .querySelectorAll('div.elementor-post__text > h3 > a')
        .map((element) => element.innerHtml.trim())
        .toList();

    final urlImages = html
        .querySelectorAll('a > div > img')
        .map((element) => element.attributes['src']!)
        .toList();

    setState(() {
      this.titles = titles;
      this.urlImages = urlImages;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: ListView.separated(
          padding: const EdgeInsets.all(12),
          itemCount: titles.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 12,
            );
          },
          itemBuilder: (context, index) {
            final title = titles[index];
            final urlImage = urlImages[index];

            return Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.network(urlImage ?? '',
                      width: double.infinity, height: 200, fit: BoxFit.cover),
                ),
                Text(title.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 14),
              ],
            );
          },
        ));
  }
}
