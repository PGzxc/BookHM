export class BookVoiceList {
  datas: BookVoice[] = [];

  constructor(datas:BookVoice[]) {
    this.datas = datas
  }
}

export class BookVoice {
  icon: Resource = $r(null);
  bookName: string = '';
  bookAuthor: string = '';
  bookRead: string = '';

  constructor(icon: Resource = $r(null), bookName: string = '', bookAuthor: string = '', bookRead: string = '') {
    this.icon = icon;
    this.bookName = bookName;
    this.bookAuthor = bookAuthor;
    this.bookRead = bookRead
  }
}