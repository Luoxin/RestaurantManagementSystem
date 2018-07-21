package automusic;

import java.io.File;
import java.io.FileNotFoundException;

import javazoom.jl.decoder.JavaLayerException;
import thread.AudioPlayer;

public class music {
	public static void automusic(){
		try {
			System.out.println();
			File music = new File("./WebRoot/WEB-INF/classes/automusic/aa.mp3");
			AudioPlayer player = new AudioPlayer(music);
			player.play();//”Ô“ÙÃ·–—
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JavaLayerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		music.automusic();
	}
}
