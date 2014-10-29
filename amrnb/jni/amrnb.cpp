#include <jni.h>
#include <inttypes.h>
#include "interf_dec.h"

void *inst = NULL;

void Decoder_init()
{
    inst = Decoder_Interface_init();
}

void Decoder_exit()
{
    Decoder_Interface_exit(inst);
    inst = NULL;
}

void Decoder_decode(JNIEnv *env, jbyteArray in, jshortArray out)
{
    jbyte *_in = env->GetByteArrayElements(in, NULL);
    jshort *_out = env->GetShortArrayElements(out, NULL);
    Decoder_Interface_Decode(inst, (uint8_t*)_in, _out, 0);
    env->ReleaseShortArrayElements(out, _out, 0);
    env->ReleaseByteArrayElements(in, _in, 0);
}
