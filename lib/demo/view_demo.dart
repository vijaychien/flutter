import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuildDemo();
  }
}

class GridViewBuildDemo extends StatelessWidget{
  Widget _gridItemBuilder(BuildContext context,int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount:posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget{
List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Item $index',
            style: TextStyle(fontSize: 18.0,color: Colors.grey),
          ),
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0, // 列边距
      mainAxisSpacing: 16.0, //行边距
      //  scrollDirection: Axis.horizontal,

      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget{
List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Item $index',
            style: TextStyle(fontSize: 18.0,color: Colors.grey),
          ),
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3, //行显示数量
      crossAxisSpacing: 16.0, // 列边距
      mainAxisSpacing: 16.0, //行边距
      //  scrollDirection: Axis.horizontal,

      children: _buildTiles(100),
    );
  }
}

class PageViewBuildDemo extends StatelessWidget{
  Widget _pageItemBuilder(BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit:BoxFit.cover
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
              ),
              Text(
                posts[index].author,
              )
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping: false, //禁止自动滑动
      //reverse: true, //反方向滑动
      scrollDirection: Axis.vertical, //设置上下滑动显示,默认是左右滑动显示
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
        initialPage: 0, //默认显示页面索引
        keepPage: true, //false为不记住用户滚动到那个页面
        viewportFraction: 1.0, //页面占用比例
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment.center,
          child: Text(
            'ONE',
            style:TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment.center,
          child: Text(
            'TWO',
            style:TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
        Container(
          color: Colors.green[900],
          alignment: Alignment.center,
          child: Text(
            'THREE',
            style:TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
      ],
    );
  }
}


