import { Book } from '../bean/ReadBean';
import SettingItem from '../bean/SettingItem';
import { BookVoice, BookVoiceList } from '../bean/VoiceBean';

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
  //3-读书
  //3-1-Tab
  static readonly voiceTabData: string[] = [
    "推荐",
    "历史",
    "心理学",
    "个人成长",
    "男生小说",
    "女生小说",
    "商业经济",
    "精品小说",
    "文学",
    "哲学",
    "艺术设计",
    "生活",
    "文化",
    "政治军事",
    "曲艺杂谈",
    "儿童教育"
  ]
  //3-2-Data
  static readonly bookVoiceListData: BookVoice[][] = [
  //1-推荐
    [
      new BookVoice($r('app.media.ic_book_suanfa'), "数据结构预算法", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_java'), "Java Web从入门到精通", "", "讲书.1.8万人收听"),
    ],
    //2-历史
    [
      new BookVoice($r('app.media.ic_book_zhongguotushuqingbao'), "中国图书情报知识图谱研究", "原著:关丁", "讲书. 1153.5万人收听"),
      new BookVoice($r('app.media.ic_book_pudongtushuguan'), "浦东图书馆内涵发展案例集", "原著:杨阳洋", "486.9万人收听"),

    ],
    //3-心理学
    [
      new BookVoice($r('app.media.ic_book_shufadegushi'), "书法的故事", "原著:克里斯多福.孟", "讲书. 126.8万次收听"),
      new BookVoice($r('app.media.ic_book_nankaiyuyan'), "南开语言学刊", "原著:中村恒子 奥田宏美", "讲书. 57.2万次收听"),
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:罗兰.米勒", "讲书. 20万次收听"),

    ],
    //4-个人成长
    [
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "主播:老梁", "625.5万人收听"),
      new BookVoice($r('app.media.ic_book_guiguzhihuo'), "硅谷之火", "主播:冯唐", "21.7万人收听"),
      new BookVoice($r('app.media.ic_book_huochushengming'), "活出生命的意义", "", "303.2万人收听"),
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "", "256.3万人收听"),

    ],
    //5-男生小说
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //6-女生小说
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //7-商业经济
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //8-精品小说
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //9-文学
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //10-哲学
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //11-艺术设计
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //12-生活
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //13-文化
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //14-政治军事
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //15-曲艺杂谈
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
    //16-儿童教育
    [
      new BookVoice($r('app.media.ic_book_hongloumeng'), "红楼梦", "主播:孙继东", "讲书. 303.2万人收听"),
      new BookVoice($r('app.media.ic_book_cyuyan'), "C语言", "主播：徐凯", "622.5万人收听"),
      new BookVoice($r('app.media.ic_book_gangtie'), "钢铁是怎样炼成的", "", "讲书.1.8万人收听"),
    ],
  ]
  //4-我的
  static readonly getSettingListData: SettingItem[] = [
      new SettingItem($r('app.string.setting_list_account'), $r("app.media.ic_account"), $r(null
      )),
      new SettingItem($r('app.string.setting_list_record'), $r("app.media.ic_record"), $r(null
      )),
      new SettingItem($r('app.string.setting_list_setting'), $r("app.media.ic_setting"), $r(null
      )),
    ];
}