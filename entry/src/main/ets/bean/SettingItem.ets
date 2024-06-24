
export default class PageResource {
  /**
   * Text of list item.
   */
  title: Resource = $r(null);
  /**
   * Image of list item.
   */
  img?: Resource = $r(null);
  /**
   * Other resource of list item.
   */
  others?: Resource = $r(null);

  constructor(title: Resource = $r(null), img: Resource = $r(null), others: Resource= $r(null)) {
    this.title = title;
    this.img = img;
    this.others = others;
  }
}