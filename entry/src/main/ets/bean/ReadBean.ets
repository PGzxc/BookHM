
export class BookList {
  datas: Book[] = [];
}


export class Book {
  icon: Resource;
  bookName: string;
  bookProgress: string;

  constructor(icon: Resource, bookName: string, bookProgress:string) {
    this.icon = icon;
    this.bookName = bookName;
    this.bookProgress = bookProgress;
  }
}