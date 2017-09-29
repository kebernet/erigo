//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/hash/FarmHashFingerprint64.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/hash/AbstractNonStreamingHashFunction.h"
#include "com/google/common/hash/FarmHashFingerprint64.h"
#include "com/google/common/hash/HashCode.h"
#include "com/google/common/hash/LittleEndianByteArray.h"
#include "java/lang/Long.h"

@interface ComGoogleCommonHashFarmHashFingerprint64 ()

+ (jlong)shiftMixWithLong:(jlong)val;

+ (jlong)hashLength16WithLong:(jlong)u
                     withLong:(jlong)v
                     withLong:(jlong)mul;

+ (void)weakHashLength32WithSeedsWithByteArray:(IOSByteArray *)bytes
                                       withInt:(jint)offset
                                      withLong:(jlong)seedA
                                      withLong:(jlong)seedB
                                 withLongArray:(IOSLongArray *)output;

+ (jlong)hashLength0to16WithByteArray:(IOSByteArray *)bytes
                              withInt:(jint)offset
                              withInt:(jint)length;

+ (jlong)hashLength17to32WithByteArray:(IOSByteArray *)bytes
                               withInt:(jint)offset
                               withInt:(jint)length;

+ (jlong)hashLength33To64WithByteArray:(IOSByteArray *)bytes
                               withInt:(jint)offset
                               withInt:(jint)length;

+ (jlong)hashLength65PlusWithByteArray:(IOSByteArray *)bytes
                               withInt:(jint)offset
                               withInt:(jint)length;

@end

inline jlong ComGoogleCommonHashFarmHashFingerprint64_get_K0();
#define ComGoogleCommonHashFarmHashFingerprint64_K0 -4348849565147123417LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonHashFarmHashFingerprint64, K0, jlong)

inline jlong ComGoogleCommonHashFarmHashFingerprint64_get_K1();
#define ComGoogleCommonHashFarmHashFingerprint64_K1 -5435081209227447693LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonHashFarmHashFingerprint64, K1, jlong)

inline jlong ComGoogleCommonHashFarmHashFingerprint64_get_K2();
#define ComGoogleCommonHashFarmHashFingerprint64_K2 -7286425919675154353LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonHashFarmHashFingerprint64, K2, jlong)

__attribute__((unused)) static jlong ComGoogleCommonHashFarmHashFingerprint64_shiftMixWithLong_(jlong val);

__attribute__((unused)) static jlong ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(jlong u, jlong v, jlong mul);

__attribute__((unused)) static void ComGoogleCommonHashFarmHashFingerprint64_weakHashLength32WithSeedsWithByteArray_withInt_withLong_withLong_withLongArray_(IOSByteArray *bytes, jint offset, jlong seedA, jlong seedB, IOSLongArray *output);

__attribute__((unused)) static jlong ComGoogleCommonHashFarmHashFingerprint64_hashLength0to16WithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length);

__attribute__((unused)) static jlong ComGoogleCommonHashFarmHashFingerprint64_hashLength17to32WithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length);

__attribute__((unused)) static jlong ComGoogleCommonHashFarmHashFingerprint64_hashLength33To64WithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length);

__attribute__((unused)) static jlong ComGoogleCommonHashFarmHashFingerprint64_hashLength65PlusWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length);

@implementation ComGoogleCommonHashFarmHashFingerprint64

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonHashFarmHashFingerprint64_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ComGoogleCommonHashHashCode *)hashBytesWithByteArray:(IOSByteArray *)input
                                                withInt:(jint)off
                                                withInt:(jint)len {
  ComGoogleCommonBasePreconditions_checkPositionIndexesWithInt_withInt_withInt_(off, off + len, ((IOSByteArray *) nil_chk(input))->size_);
  return ComGoogleCommonHashHashCode_fromLongWithLong_(ComGoogleCommonHashFarmHashFingerprint64_fingerprintWithByteArray_withInt_withInt_(input, off, len));
}

- (jint)bits {
  return 64;
}

- (NSString *)description {
  return @"Hashing.farmHashFingerprint64()";
}

+ (jlong)fingerprintWithByteArray:(IOSByteArray *)bytes
                          withInt:(jint)offset
                          withInt:(jint)length {
  return ComGoogleCommonHashFarmHashFingerprint64_fingerprintWithByteArray_withInt_withInt_(bytes, offset, length);
}

+ (jlong)shiftMixWithLong:(jlong)val {
  return ComGoogleCommonHashFarmHashFingerprint64_shiftMixWithLong_(val);
}

+ (jlong)hashLength16WithLong:(jlong)u
                     withLong:(jlong)v
                     withLong:(jlong)mul {
  return ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(u, v, mul);
}

+ (void)weakHashLength32WithSeedsWithByteArray:(IOSByteArray *)bytes
                                       withInt:(jint)offset
                                      withLong:(jlong)seedA
                                      withLong:(jlong)seedB
                                 withLongArray:(IOSLongArray *)output {
  ComGoogleCommonHashFarmHashFingerprint64_weakHashLength32WithSeedsWithByteArray_withInt_withLong_withLong_withLongArray_(bytes, offset, seedA, seedB, output);
}

+ (jlong)hashLength0to16WithByteArray:(IOSByteArray *)bytes
                              withInt:(jint)offset
                              withInt:(jint)length {
  return ComGoogleCommonHashFarmHashFingerprint64_hashLength0to16WithByteArray_withInt_withInt_(bytes, offset, length);
}

+ (jlong)hashLength17to32WithByteArray:(IOSByteArray *)bytes
                               withInt:(jint)offset
                               withInt:(jint)length {
  return ComGoogleCommonHashFarmHashFingerprint64_hashLength17to32WithByteArray_withInt_withInt_(bytes, offset, length);
}

+ (jlong)hashLength33To64WithByteArray:(IOSByteArray *)bytes
                               withInt:(jint)offset
                               withInt:(jint)length {
  return ComGoogleCommonHashFarmHashFingerprint64_hashLength33To64WithByteArray_withInt_withInt_(bytes, offset, length);
}

+ (jlong)hashLength65PlusWithByteArray:(IOSByteArray *)bytes
                               withInt:(jint)offset
                               withInt:(jint)length {
  return ComGoogleCommonHashFarmHashFingerprint64_hashLength65PlusWithByteArray_withInt_withInt_(bytes, offset, length);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHashCode;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x8, 3, 1, -1, -1, -1, -1 },
    { NULL, "J", 0xa, 4, 5, -1, -1, -1, -1 },
    { NULL, "J", 0xa, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 8, 9, -1, -1, -1, -1 },
    { NULL, "J", 0xa, 10, 1, -1, -1, -1, -1 },
    { NULL, "J", 0xa, 11, 1, -1, -1, -1, -1 },
    { NULL, "J", 0xa, 12, 1, -1, -1, -1, -1 },
    { NULL, "J", 0xa, 13, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(hashBytesWithByteArray:withInt:withInt:);
  methods[2].selector = @selector(bits);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(fingerprintWithByteArray:withInt:withInt:);
  methods[5].selector = @selector(shiftMixWithLong:);
  methods[6].selector = @selector(hashLength16WithLong:withLong:withLong:);
  methods[7].selector = @selector(weakHashLength32WithSeedsWithByteArray:withInt:withLong:withLong:withLongArray:);
  methods[8].selector = @selector(hashLength0to16WithByteArray:withInt:withInt:);
  methods[9].selector = @selector(hashLength17to32WithByteArray:withInt:withInt:);
  methods[10].selector = @selector(hashLength33To64WithByteArray:withInt:withInt:);
  methods[11].selector = @selector(hashLength65PlusWithByteArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "K0", "J", .constantValue.asLong = ComGoogleCommonHashFarmHashFingerprint64_K0, 0x1a, -1, -1, -1, -1 },
    { "K1", "J", .constantValue.asLong = ComGoogleCommonHashFarmHashFingerprint64_K1, 0x1a, -1, -1, -1, -1 },
    { "K2", "J", .constantValue.asLong = ComGoogleCommonHashFarmHashFingerprint64_K2, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "hashBytes", "[BII", "toString", "fingerprint", "shiftMix", "J", "hashLength16", "JJJ", "weakHashLength32WithSeeds", "[BIJJ[J", "hashLength0to16", "hashLength17to32", "hashLength33To64", "hashLength65Plus" };
  static const J2ObjcClassInfo _ComGoogleCommonHashFarmHashFingerprint64 = { "FarmHashFingerprint64", "com.google.common.hash", ptrTable, methods, fields, 7, 0x10, 12, 3, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonHashFarmHashFingerprint64;
}

@end

void ComGoogleCommonHashFarmHashFingerprint64_init(ComGoogleCommonHashFarmHashFingerprint64 *self) {
  ComGoogleCommonHashAbstractNonStreamingHashFunction_init(self);
}

ComGoogleCommonHashFarmHashFingerprint64 *new_ComGoogleCommonHashFarmHashFingerprint64_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonHashFarmHashFingerprint64, init)
}

ComGoogleCommonHashFarmHashFingerprint64 *create_ComGoogleCommonHashFarmHashFingerprint64_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonHashFarmHashFingerprint64, init)
}

jlong ComGoogleCommonHashFarmHashFingerprint64_fingerprintWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length) {
  ComGoogleCommonHashFarmHashFingerprint64_initialize();
  if (length <= 32) {
    if (length <= 16) {
      return ComGoogleCommonHashFarmHashFingerprint64_hashLength0to16WithByteArray_withInt_withInt_(bytes, offset, length);
    }
    else {
      return ComGoogleCommonHashFarmHashFingerprint64_hashLength17to32WithByteArray_withInt_withInt_(bytes, offset, length);
    }
  }
  else if (length <= 64) {
    return ComGoogleCommonHashFarmHashFingerprint64_hashLength33To64WithByteArray_withInt_withInt_(bytes, offset, length);
  }
  else {
    return ComGoogleCommonHashFarmHashFingerprint64_hashLength65PlusWithByteArray_withInt_withInt_(bytes, offset, length);
  }
}

jlong ComGoogleCommonHashFarmHashFingerprint64_shiftMixWithLong_(jlong val) {
  ComGoogleCommonHashFarmHashFingerprint64_initialize();
  return val ^ (JreURShift64(val, 47));
}

jlong ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(jlong u, jlong v, jlong mul) {
  ComGoogleCommonHashFarmHashFingerprint64_initialize();
  jlong a = (u ^ v) * mul;
  a ^= (JreURShift64(a, 47));
  jlong b = (v ^ a) * mul;
  b ^= (JreURShift64(b, 47));
  b *= mul;
  return b;
}

void ComGoogleCommonHashFarmHashFingerprint64_weakHashLength32WithSeedsWithByteArray_withInt_withLong_withLong_withLongArray_(IOSByteArray *bytes, jint offset, jlong seedA, jlong seedB, IOSLongArray *output) {
  ComGoogleCommonHashFarmHashFingerprint64_initialize();
  jlong part1 = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset);
  jlong part2 = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 8);
  jlong part3 = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 16);
  jlong part4 = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 24);
  seedA += part1;
  seedB = JavaLangLong_rotateRightWithLong_withInt_(seedB + seedA + part4, 21);
  jlong c = seedA;
  seedA += part2;
  seedA += part3;
  seedB += JavaLangLong_rotateRightWithLong_withInt_(seedA, 44);
  *IOSLongArray_GetRef(nil_chk(output), 0) = seedA + part4;
  *IOSLongArray_GetRef(output, 1) = seedB + c;
}

jlong ComGoogleCommonHashFarmHashFingerprint64_hashLength0to16WithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length) {
  ComGoogleCommonHashFarmHashFingerprint64_initialize();
  if (length >= 8) {
    jlong mul = ComGoogleCommonHashFarmHashFingerprint64_K2 + length * 2;
    jlong a = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset) + ComGoogleCommonHashFarmHashFingerprint64_K2;
    jlong b = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + length - 8);
    jlong c = JavaLangLong_rotateRightWithLong_withInt_(b, 37) * mul + a;
    jlong d = (JavaLangLong_rotateRightWithLong_withInt_(a, 25) + b) * mul;
    return ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(c, d, mul);
  }
  if (length >= 4) {
    jlong mul = ComGoogleCommonHashFarmHashFingerprint64_K2 + length * 2;
    jlong a = ComGoogleCommonHashLittleEndianByteArray_load32WithByteArray_withInt_(bytes, offset) & (jlong) 0xFFFFFFFFLL;
    return ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(length + (JreLShift64(a, 3)), ComGoogleCommonHashLittleEndianByteArray_load32WithByteArray_withInt_(bytes, offset + length - 4) & (jlong) 0xFFFFFFFFLL, mul);
  }
  if (length > 0) {
    jbyte a = IOSByteArray_Get(nil_chk(bytes), offset);
    jbyte b = IOSByteArray_Get(bytes, offset + (JreRShift32(length, 1)));
    jbyte c = IOSByteArray_Get(bytes, offset + (length - 1));
    jint y = (a & (jint) 0xFF) + (JreLShift32((b & (jint) 0xFF), 8));
    jint z = length + (JreLShift32((c & (jint) 0xFF), 2));
    return ComGoogleCommonHashFarmHashFingerprint64_shiftMixWithLong_(y * ComGoogleCommonHashFarmHashFingerprint64_K2 ^ z * ComGoogleCommonHashFarmHashFingerprint64_K0) * ComGoogleCommonHashFarmHashFingerprint64_K2;
  }
  return ComGoogleCommonHashFarmHashFingerprint64_K2;
}

jlong ComGoogleCommonHashFarmHashFingerprint64_hashLength17to32WithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length) {
  ComGoogleCommonHashFarmHashFingerprint64_initialize();
  jlong mul = ComGoogleCommonHashFarmHashFingerprint64_K2 + length * 2;
  jlong a = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset) * ComGoogleCommonHashFarmHashFingerprint64_K1;
  jlong b = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 8);
  jlong c = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + length - 8) * mul;
  jlong d = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + length - 16) * ComGoogleCommonHashFarmHashFingerprint64_K2;
  return ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(JavaLangLong_rotateRightWithLong_withInt_(a + b, 43) + JavaLangLong_rotateRightWithLong_withInt_(c, 30) + d, a + JavaLangLong_rotateRightWithLong_withInt_(b + ComGoogleCommonHashFarmHashFingerprint64_K2, 18) + c, mul);
}

jlong ComGoogleCommonHashFarmHashFingerprint64_hashLength33To64WithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length) {
  ComGoogleCommonHashFarmHashFingerprint64_initialize();
  jlong mul = ComGoogleCommonHashFarmHashFingerprint64_K2 + length * 2;
  jlong a = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset) * ComGoogleCommonHashFarmHashFingerprint64_K2;
  jlong b = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 8);
  jlong c = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + length - 8) * mul;
  jlong d = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + length - 16) * ComGoogleCommonHashFarmHashFingerprint64_K2;
  jlong y = JavaLangLong_rotateRightWithLong_withInt_(a + b, 43) + JavaLangLong_rotateRightWithLong_withInt_(c, 30) + d;
  jlong z = ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(y, a + JavaLangLong_rotateRightWithLong_withInt_(b + ComGoogleCommonHashFarmHashFingerprint64_K2, 18) + c, mul);
  jlong e = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 16) * mul;
  jlong f = ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 24);
  jlong g = (y + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + length - 32)) * mul;
  jlong h = (z + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + length - 24)) * mul;
  return ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(JavaLangLong_rotateRightWithLong_withInt_(e + f, 43) + JavaLangLong_rotateRightWithLong_withInt_(g, 30) + h, e + JavaLangLong_rotateRightWithLong_withInt_(f + a, 18) + g, mul);
}

jlong ComGoogleCommonHashFarmHashFingerprint64_hashLength65PlusWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length) {
  ComGoogleCommonHashFarmHashFingerprint64_initialize();
  jint seed = 81;
  jlong x = seed;
  jlong y = seed * ComGoogleCommonHashFarmHashFingerprint64_K1 + 113;
  jlong z = ComGoogleCommonHashFarmHashFingerprint64_shiftMixWithLong_(y * ComGoogleCommonHashFarmHashFingerprint64_K2 + 113) * ComGoogleCommonHashFarmHashFingerprint64_K2;
  IOSLongArray *v = [IOSLongArray newArrayWithLength:2];
  IOSLongArray *w = [IOSLongArray newArrayWithLength:2];
  x = x * ComGoogleCommonHashFarmHashFingerprint64_K2 + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset);
  jint end = offset + ((length - 1) / 64) * 64;
  jint last64offset = end + ((length - 1) & 63) - 63;
  do {
    x = JavaLangLong_rotateRightWithLong_withInt_(x + y + IOSLongArray_Get(v, 0) + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 8), 37) * ComGoogleCommonHashFarmHashFingerprint64_K1;
    y = JavaLangLong_rotateRightWithLong_withInt_(y + IOSLongArray_Get(v, 1) + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 48), 42) * ComGoogleCommonHashFarmHashFingerprint64_K1;
    x ^= IOSLongArray_Get(w, 1);
    y += IOSLongArray_Get(v, 0) + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 40);
    z = JavaLangLong_rotateRightWithLong_withInt_(z + IOSLongArray_Get(w, 0), 33) * ComGoogleCommonHashFarmHashFingerprint64_K1;
    ComGoogleCommonHashFarmHashFingerprint64_weakHashLength32WithSeedsWithByteArray_withInt_withLong_withLong_withLongArray_(bytes, offset, IOSLongArray_Get(v, 1) * ComGoogleCommonHashFarmHashFingerprint64_K1, x + IOSLongArray_Get(w, 0), v);
    ComGoogleCommonHashFarmHashFingerprint64_weakHashLength32WithSeedsWithByteArray_withInt_withLong_withLong_withLongArray_(bytes, offset + 32, z + IOSLongArray_Get(w, 1), y + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 16), w);
    jlong tmp = x;
    x = z;
    z = tmp;
    offset += 64;
  }
  while (offset != end);
  jlong mul = ComGoogleCommonHashFarmHashFingerprint64_K1 + (JreLShift64((z & (jint) 0xFF), 1));
  offset = last64offset;
  *IOSLongArray_GetRef(w, 0) += ((length - 1) & 63);
  *IOSLongArray_GetRef(v, 0) += IOSLongArray_Get(w, 0);
  *IOSLongArray_GetRef(w, 0) += IOSLongArray_Get(v, 0);
  x = JavaLangLong_rotateRightWithLong_withInt_(x + y + IOSLongArray_Get(v, 0) + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 8), 37) * mul;
  y = JavaLangLong_rotateRightWithLong_withInt_(y + IOSLongArray_Get(v, 1) + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 48), 42) * mul;
  x ^= IOSLongArray_Get(w, 1) * 9;
  y += IOSLongArray_Get(v, 0) * 9 + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 40);
  z = JavaLangLong_rotateRightWithLong_withInt_(z + IOSLongArray_Get(w, 0), 33) * mul;
  ComGoogleCommonHashFarmHashFingerprint64_weakHashLength32WithSeedsWithByteArray_withInt_withLong_withLong_withLongArray_(bytes, offset, IOSLongArray_Get(v, 1) * mul, x + IOSLongArray_Get(w, 0), v);
  ComGoogleCommonHashFarmHashFingerprint64_weakHashLength32WithSeedsWithByteArray_withInt_withLong_withLong_withLongArray_(bytes, offset + 32, z + IOSLongArray_Get(w, 1), y + ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(bytes, offset + 16), w);
  return ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(IOSLongArray_Get(v, 0), IOSLongArray_Get(w, 0), mul) + ComGoogleCommonHashFarmHashFingerprint64_shiftMixWithLong_(y) * ComGoogleCommonHashFarmHashFingerprint64_K0 + x, ComGoogleCommonHashFarmHashFingerprint64_hashLength16WithLong_withLong_withLong_(IOSLongArray_Get(v, 1), IOSLongArray_Get(w, 1), mul) + z, mul);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonHashFarmHashFingerprint64)