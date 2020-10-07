import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themainnews/Contries/america.dart';
import 'package:themainnews/Contries/brazil.dart';
import 'package:themainnews/Contries/canada.dart';
import 'package:themainnews/Contries/china.dart';
import 'package:themainnews/Contries/england.dart';
import 'package:themainnews/Contries/france.dart';
import 'package:themainnews/Contries/germany.dart';
import 'package:themainnews/Contries/italy.dart';
import 'package:themainnews/Contries/japan.dart';
import 'package:themainnews/Contries/southAfrica.dart';
import 'package:themainnews/helper/data.dart';
import 'package:themainnews/helper/news.dart';
import 'package:themainnews/models/article_model.dart';
import 'package:themainnews/models/category_model.dart';
import 'package:themainnews/views/article_view.dart';
import 'package:themainnews/views/category_news.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> articles = new List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    getNews();
  }

  getNews() async{
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCodeOnly(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Main"),
            Text("News", style: TextStyle(
              color: Colors.red
            ),)
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _loading ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      ) : SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[

              /// Categories
              Container(
                height: 70,
                child: ListView.builder(
                  itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                    return CategoryTile(
                      imageUrl: categories[index].imageUrl,
                      categoryName: categories[index].categoryName,
                    );
                    }),
              ),

              /// Blogs
              Container(
                padding: EdgeInsets.only(top: 16),
                child: ListView.builder(
                  itemCount: articles.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index){
                    return BlogTile(
                      imageUrl: articles[index].urlToImage,
                      title: articles[index].title,
                      desc: articles[index].description,
                      url: articles[index].url,
                    );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {

  final String imageUrl, categoryName;
  CategoryTile({this.imageUrl, this.categoryName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => CategoryNews(
            category: categoryName.toLowerCase(),
          )
        ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  imageUrl: imageUrl, width: 120, height: 60, fit: BoxFit.cover,)
            ),
            Container(
              alignment: Alignment.center,
              width: 120, height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
              child: Text(categoryName, style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),),
            )
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {

  final String imageUrl, title, desc, url;
  BlogTile({@required this.imageUrl, @required this.title, @required this.desc, @required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ArticleView(
            blogUrl: url,
          )
        ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)
            ),
            SizedBox(height: 8,),
            Text(title, style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 8,),
            Text(desc, style: TextStyle(
              color: Colors.black54
            ),)
          ],
        ),
      ),
    );
  }
}

class DrawerCodeOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: [
          new DrawerHeader(
            decoration: new BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage("images/playstore.png"),
                    fit: BoxFit.cover
                )
            ),
          ),
          new ListTile(
            title: new Text("American News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => America()
              ));
            },
          ),
          new ListTile(
            title: new Text("British News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => England()
              ));
            },
          ),
          new ListTile(
            title: new Text("French News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => France()
              ));
            },
          ),
          new ListTile(
            title: new Text("Chinese News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => China()
              ));
            },
          ),
          new ListTile(
            title: new Text("German News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Germany()
              ));
            },
          ),
          new ListTile(
            title: new Text("Canadian News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Canada()
              ));
            },
          ),
          new ListTile(
            title: new Text("Brazilian News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Brazil()
              ));
            },
          ),
          new ListTile(
            title: new Text("Italian News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Italy()
              ));
            },
          ),
          new ListTile(
            title: new Text("Japanese News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Japan()
              ));
            },
          ),
          new ListTile(
            title: new Text("South African News"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SouthAfrica()
              ));
            },
          )
        ],
      ),
    );
  }
}
