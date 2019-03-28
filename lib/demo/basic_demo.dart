import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: 行内多样式显示
    return Container(
      // color: Colors.grey[100], //设置背景颜色
      //设置背景图片
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
              alignment: Alignment.topCenter,
              // repeat: ImageRepeat.repeatY,
              fit: BoxFit.cover, //图片填充整个框架
              //设置滤镜
              colorFilter: ColorFilter.mode(
                  Colors.indigoAccent[400].withOpacity(0.5),
                  BlendMode.hardLight))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3,54,255,1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              //全部设置边样式
              border: Border.all(
                color: Colors.indigoAccent[100], //颜色
                width: 3.0, //宽度
                style: BorderStyle.solid, //边样式
              ),
              //borderRadius: BorderRadius.circular(16.0) ,//全局圆角
              //单独设置圆角
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(64.0)
              // )
              //设置阴影
              boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 16.0), //偏移
                    color: Color.fromRGBO(16, 20, 188, 1.0), //颜色
                    blurRadius: 25.0, //模糊
                    spreadRadius: -9.0 //阴影大小 正数放大,负数缩小
                    )
              ],
              //设置box的形状,不能和borderradius同用
              shape: BoxShape.circle,
              //圆形渐变
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0),
              //   ]
              // ),
              //扇形渐变
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              // 单独设置边样式
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid
              //   )

              //   )
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: 行内多样式显示
    return RichText(
      text: TextSpan(
        text: 'oulet',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
              text: '.net',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '<$_title> --$_author.具有一定规模的App通常有一套成熟通用的基础库，尤其是阿里系App，一般需要依赖很多体系内的基础库。那么使用Flutter重新从头开发App的成本和风险都较高。所以在Native App进行渐进式迁移是Flutter技术在现有Native App进行应用的稳健型方式。闲鱼在实践中沉淀出一套自己的混合技术方案。在此过程中，我们跟Google Flutter团队进行着密切的沟通，听取了官方的一些建议，同时也针对我们业务具体情况进行方案的选型以及具体的实现。',
      textAlign: TextAlign.left, //文字左对齐
      style: _textStyle, //带下划线样式私有
      maxLines: 3, //显示3行数据
      overflow: TextOverflow.ellipsis, //结尾标识符
    );
  }
}
