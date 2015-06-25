import ddf.minim.*;       
Minim minim = new Minim(this); 
/**
 We're going to use BANANAS to stop and start songs. Different bananas will play different songs.
 If you haven't used the Makey Makey before, check out this guide before you start: http://makeymakey.com/howto.php
 
 1. Download a song from YouTube using: youtube-mp3.org
 2. Plug the Makey Makey into the bananas.
 3. Finish the Processing code below so that touching a banana will start and stop a song.
 **/

AudioPlayer everybodyDanceNow;              //1. Change to the name of your song
boolean everybodyDanceNowIsStopped = true;  

AudioPlayer uptownFunk;              
boolean uptownFunkIsStopped = true; 

AudioPlayer honeyImGood;             
boolean honeyImGoodIsStopped = true; 

void loadSongs() {
  everybodyDanceNow = minim.loadFile("C & C Music factory - Everybody dance now.mp3");
  uptownFunk = minim.loadFile("Mark Ronson - Uptown Funk ft. Bruno Mars.mp3");  //2. Drop mp3 onto this sketch and put its name here
  honeyImGood = minim.loadFile("Andy Grammer - Honey, I'm Good. (Music Video).mp3");  //2. Drop mp3 onto this sketch and put its name here
}

void keyPressed() {

   if (keyCode == UP) {
    /* 3. If yellowSubmarineIsStopped, play it, and set yellowSubmarineIsStopped to false. */
     if(everybodyDanceNowIsStopped) {
       playSong(everybodyDanceNow);
       everybodyDanceNowIsStopped=false;
     } else {
       stopSong(everybodyDanceNow);
       everybodyDanceNowIsStopped=true;
     }
   }
   
    if (keyCode == LEFT) {
     if(uptownFunkIsStopped) {
       playSong(uptownFunk);
       uptownFunkIsStopped=false;
     } else {
       stopSong(uptownFunk);
       uptownFunkIsStopped=true;
     }
    }
    
     if (keyCode == DOWN) {
     if(!uptownFunkIsStopped) {
       skipSong(uptownFunk);
     } 
     if(!everybodyDanceNowIsStopped) {
       skipSong(everybodyDanceNow);
     } 
      if(!honeyImGoodIsStopped) {
       skipSong(honeyImGood);
     }  
     }
    
     if (keyCode == RIGHT) {
      if(honeyImGoodIsStopped) {
        playSong(honeyImGood);
        honeyImGoodIsStopped=false;
      } else {
        stopSong(honeyImGood);
        honeyImGoodIsStopped=true;
     }
    }
    /* 4. Otherwise, stop it, and set yellowSubmarineIsStopped to true. */
    /* 5. Add other songs for the other bananas. keyCode will tell you which banana was pressed. */
    println("you pressed " + keyCode);
  } 

void playSong(AudioPlayer song) {
  song.play();
}

void stopSong(AudioPlayer song)  {
  song.pause();
}

void skipSong(AudioPlayer song)  {
  float pos = song.position();
  println("position=" + pos);
  song.skip(-500);
}

void draw() {}

void setup() {
  loadSongs();
}



