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

  public final static native void Decoder_init();
  public final static native void Decoder_exit();
  public final static native void Decoder_decode(byte[] jarg2, short[] jarg3);
}
