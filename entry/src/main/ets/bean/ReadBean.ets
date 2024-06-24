
export class BookList {
  datas: Book[] = [];
}


export class Book {
  icon: Resource = $r(null);
  bookName: string = '';
  bookProgress: string = '';

  constructor(icon: Resource = $r(null), bookName: string = '', bookProgress:string = '') {
    this.icon = icon;
    this.bookName = bookName;
    this.bookProgress = bookProgress;
  }
}