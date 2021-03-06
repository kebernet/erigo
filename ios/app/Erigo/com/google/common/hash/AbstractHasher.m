//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/hash/AbstractHasher.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/hash/AbstractHasher.h"
#include "com/google/common/hash/Hasher.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/nio/charset/Charset.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation ComGoogleCommonHashAbstractHasher

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonHashAbstractHasher_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<ComGoogleCommonHashHasher>)putBooleanWithBoolean:(jboolean)b {
  return [self putByteWithByte:b ? (jbyte) 1 : (jbyte) 0];
}

- (id<ComGoogleCommonHashHasher>)putDoubleWithDouble:(jdouble)d {
  return [self putLongWithLong:JavaLangDouble_doubleToRawLongBitsWithDouble_(d)];
}

- (id<ComGoogleCommonHashHasher>)putFloatWithFloat:(jfloat)f {
  return [self putIntWithInt:JavaLangFloat_floatToRawIntBitsWithFloat_(f)];
}

- (id<ComGoogleCommonHashHasher>)putUnencodedCharsWithJavaLangCharSequence:(id<JavaLangCharSequence>)charSequence {
  for (jint i = 0, len = [((id<JavaLangCharSequence>) nil_chk(charSequence)) java_length]; i < len; i++) {
    (void) [self putCharWithChar:[charSequence charAtWithInt:i]];
  }
  return self;
}

- (id<ComGoogleCommonHashHasher>)putStringWithJavaLangCharSequence:(id<JavaLangCharSequence>)charSequence
                                         withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset {
  return [self putBytesWithByteArray:[((NSString *) nil_chk([((id<JavaLangCharSequence>) nil_chk(charSequence)) description])) java_getBytesWithCharset:charset]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHasher;", 0x11, 0, 1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHasher;", 0x11, 2, 3, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHasher;", 0x11, 4, 5, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHasher;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHasher;", 0x1, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(putBooleanWithBoolean:);
  methods[2].selector = @selector(putDoubleWithDouble:);
  methods[3].selector = @selector(putFloatWithFloat:);
  methods[4].selector = @selector(putUnencodedCharsWithJavaLangCharSequence:);
  methods[5].selector = @selector(putStringWithJavaLangCharSequence:withJavaNioCharsetCharset:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "putBoolean", "Z", "putDouble", "D", "putFloat", "F", "putUnencodedChars", "LJavaLangCharSequence;", "putString", "LJavaLangCharSequence;LJavaNioCharsetCharset;" };
  static const J2ObjcClassInfo _ComGoogleCommonHashAbstractHasher = { "AbstractHasher", "com.google.common.hash", ptrTable, methods, NULL, 7, 0x400, 6, 0, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonHashAbstractHasher;
}

@end

void ComGoogleCommonHashAbstractHasher_init(ComGoogleCommonHashAbstractHasher *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonHashAbstractHasher)
