//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/hash/HashFunction.java
//

#include "J2ObjC_source.h"
#include "com/google/common/hash/HashFunction.h"

@interface ComGoogleCommonHashHashFunction : NSObject

@end

@implementation ComGoogleCommonHashHashFunction

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComGoogleCommonHashHasher;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHasher;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHashCode;", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHashCode;", 0x401, 3, 4, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHashCode;", 0x401, 5, 6, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHashCode;", 0x401, 5, 7, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHashCode;", 0x401, 8, 9, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHashCode;", 0x401, 10, 11, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonHashHashCode;", 0x401, 12, 13, -1, 14, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(newHasher);
  methods[1].selector = @selector(newHasherWithInt:);
  methods[2].selector = @selector(hashIntWithInt:);
  methods[3].selector = @selector(hashLongWithLong:);
  methods[4].selector = @selector(hashBytesWithByteArray:);
  methods[5].selector = @selector(hashBytesWithByteArray:withInt:withInt:);
  methods[6].selector = @selector(hashUnencodedCharsWithJavaLangCharSequence:);
  methods[7].selector = @selector(hashStringWithJavaLangCharSequence:withJavaNioCharsetCharset:);
  methods[8].selector = @selector(hashObjectWithId:withComGoogleCommonHashFunnel:);
  methods[9].selector = @selector(bits);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "newHasher", "I", "hashInt", "hashLong", "J", "hashBytes", "[B", "[BII", "hashUnencodedChars", "LJavaLangCharSequence;", "hashString", "LJavaLangCharSequence;LJavaNioCharsetCharset;", "hashObject", "LNSObject;LComGoogleCommonHashFunnel;", "<T:Ljava/lang/Object;>(TT;Lcom/google/common/hash/Funnel<-TT;>;)Lcom/google/common/hash/HashCode;" };
  static const J2ObjcClassInfo _ComGoogleCommonHashHashFunction = { "HashFunction", "com.google.common.hash", ptrTable, methods, NULL, 7, 0x609, 10, 0, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonHashHashFunction;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleCommonHashHashFunction)
