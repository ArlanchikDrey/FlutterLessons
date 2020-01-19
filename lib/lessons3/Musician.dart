class Musician{
  final instrument;

  Musician(this.instrument);

  dynamic play() => "Hi,can i play on $instrument";

}

mixin Rock{
  bool knowsHowToPlayACDC = true;

  String playPopMusic(play){
    if(knowsHowToPlayACDC){
      return play;
    }else{
      return "null";
    }
  }
}