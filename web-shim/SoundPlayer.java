// WEB-ONLY replacement for src/SoundPlayer.java (same class name + play(String) signature).
// The original uses javax.sound, which doesn't produce audio in the browser runtime.
// Here play() is implemented in JavaScript (see Java_SoundPlayer_play in public/index.html).
public class SoundPlayer {
    public static native void play(String filename);
}
