//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/hash/Funnel.java
//

#include "J2ObjC_source.h"
#include "com/google/common/hash/Funnel.h"

@interface ComGoogleCommonHashFunnel : NSObject

@end

@implementation ComGoogleCommonHashFunnel

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(funnelWithId:withComGoogleCommonHashPrimitiveSink:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "funnel", "LNSObject;LComGoogleCommonHashPrimitiveSink;", "(TT;Lcom/google/common/hash/PrimitiveSink;)V", "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _ComGoogleCommonHashFunnel = { "Funnel", "com.google.common.hash", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, 3, -1 };
  return &_ComGoogleCommonHashFunnel;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleCommonHashFunnel)
