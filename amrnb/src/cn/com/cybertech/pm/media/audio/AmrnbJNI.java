/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package cn.com.cybertech.pm.media.audio;

public class AmrnbJNI {

  static {
    try {
        java.lang.System.loadLibrary("amrnb");
    } catch (UnsatisfiedLinkError e) {
        java.lang.System.err.println("native code library failed to load.\n" + e);
        java.lang.System.exit(1);
    }
  }

  public final static native long Decoder_Interface_init();
  public final static native void Decoder_Interface_exit(long jarg1);
  public final static native void Decoder_Interface_Decode(long jarg1, long jarg2, long jarg3, int jarg4);
  public final static native int MR475_get();
  public final static native long Encoder_Interface_init(int jarg1);
  public final static native void Encoder_Interface_exit(long jarg1);
  public final static native int Encoder_Interface_Encode(long jarg1, int jarg2, long jarg3, long jarg4, int jarg5);
}