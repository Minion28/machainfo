import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  //method to fetch the titles and images
  List<String> titles = [];
  List<String?> urlImages = [];

  @override
  void initState() {
    super.initState();

    getWebsiteData();
  }

  Future getWebsiteData() async {
    //http package to load website data
    final url = Uri.parse('https://machakos.go.ke/');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);

    //selectors for the titles in the html source code
    final titles = html
        .querySelectorAll('div.elementor-post__text > h3 > a')
        .map((element) => element.innerHtml.trim())
        .toList();

    //selectors for the images in the source code
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
        backgroundColor: white,
        body: ListView.separated(
          padding: const EdgeInsets.all(12),
          itemCount: titles.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 12,
            );
          },
          itemBuilder: (context, index) {
            final urlImage = urlImages[index];
            final title = titles[index];

            //display the title and image from the website to the application
            return Column(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.network(
                      urlImage ?? '',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    )),
                Text(title.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 14),
              ],
            );
          },
        ));
  }
}
