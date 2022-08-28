class Rect{
  num hegiht;
  num width;
  Rect(this.hegiht,this.width);
  //Rect():hegiht=2,width=3{} 
  get area{
    return this.hegiht*this.width;
  }
  set areaHeight(value){
    this.hegiht = value;
  }
}

void main(){
  Rect r = new Rect(10, 8);
  print("Area: ${r.area}");
  r.areaHeight = 9;
  print("New Area: ${r.area}");
}