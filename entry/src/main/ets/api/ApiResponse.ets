import { Book } from '../bean/ReadBean';

export default class ApiResponse {
  static readonly readListData: Book[] = [
    new Book($r('app.media.ic_book_hongloumeng'), "红楼梦", "已读1%"),
    new Book($r('app.media.ic_book_cyuyan'), "C语言", "已读2%"),
    new Book($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "已读63%"),
    new Book($r('app.media.ic_book_guiguzhihuo'), "硅谷之火", "已读完"),
    new Book($r('app.media.ic_book_huochushengming'), "活出生命的意义", "已读1%"),
    new Book($r('app.media.ic_book_java'), "Java Web从入门到精通", "已读5%"),
    new Book($r('app.media.ic_book_jiyigongdian'), "记忆宫殿", "已读2%"),
    new Book($r("app.media.ic_book_lubingxun"), "鲁宾孙漂流记", "已读3%"),
    new Book($r('app.media.ic_book_luotuoxiang'), "骆驼祥子", "未读"),
    new Book($r('app.media.ic_book_sanguo'), "三国演义", "未读"),
    new Book($r('app.media.ic_book_shengcundeguhsi'), "我们赖以生存的故事", "已读10%"),
    new Book($r('app.media.ic_book_shuihuzhuan'), "水浒传", "未读"),
    new Book($r('app.media.ic_book_suanfa'), "数据结构预算法", "已读1%"),
    new Book($r('app.media.ic_book_zhongguotushuqingbao'), "中国图书情报知识图谱研究", "已读2%"),
    new Book($r('app.media.ic_book_gaoxiaotushuguan'), "高校图书馆信息资源建设与学科服务研究", "已读63%"),
    new Book($r("app.media.ic_book_quanguokeji"), "全国科技图书总览", "已读完"),
    new Book($r('app.media.ic_book_shufadegushi'), "书法的故事", "已读1%"),
    new Book($r('app.media.ic_book_nankaiyuyan'), "南开语言学刊", "已读5%"),
    new Book($r('app.media.ic_book_pudongtushuguan'), "浦东图书馆内涵发展案例集", "已读2%"),
    new Book($r('app.media.ic_book_chengshiwenhuagailun'), "城市文化概论", "已读3%"),
  ]

  //2-书架
  //2-1
  static readonly bookRateListData: Book[] = [
    new Book($r('app.media.ic_book_suanfa'), "尚未阅读", "29本"),
    new Book($r('app.media.ic_book_nankaiyuyan'), "已读完", "1本"),
  ]
   //2-3
  static readonly bookRecommendListData: Book[] = [

    new Book($r('app.media.ic_book_cyuyan'), "神作", "推荐>=90%"),
    new Book($r('app.media.ic_book_gangtie'), "好评如潮", "推荐值85-90%"),
    new Book($r('app.media.ic_book_guiguzhihuo'), "绘制人口", "推荐值80-85%"),
    new Book($r('app.media.ic_book_huochushengming'), "值得一读", "推荐值70-80%"),
    new Book($r('app.media.ic_book_java'), "褒贬不一", "推荐值50-70%"),
    new Book($r('app.media.ic_book_jiyigongdian'), "不值一读", "推荐值30-50%"),
  ]
  //2-4
  static readonly bookCategoryData: Book[] = [
    new Book($r('app.media.ic_book_hongloumeng'), "文学", "29本"),
    new Book($r('app.media.ic_book_cyuyan'), "计算机", "1本"),
    new Book($r('app.media.ic_book_guiguzhihuo'), "历史", "2本"),
    new Book($r('app.media.ic_book_shengcundeguhsi'), "个人成长", "3本%"),
    new Book($r('app.media.ic_book_sanguo'), "小说", "5本"),
  ]
  //2-5
  static readonly bookVipData: Book[] = [
    new Book($r('app.media.ic_book_java'), "体验卡可读", "29本"),
    new Book($r('app.media.ic_book_shengcundeguhsi'), "付费会员卡可读", "1本"),
    new Book($r('app.media.ic_book_suanfa'), "按章购买", "2本"),
    new Book($r('app.media.ic_book_pudongtushuguan'), "已购买", "3本%"),

  ]
}