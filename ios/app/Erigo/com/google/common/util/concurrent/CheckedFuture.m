//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/CheckedFuture.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/util/concurrent/CheckedFuture.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"

@interface ComGoogleCommonUtilConcurrentCheckedFuture : NSObject

@end

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentCheckedFuture__Annotations$0();

@implementation ComGoogleCommonUtilConcurrentCheckedFuture

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, -1, -1, 0, 1, -1, -1 },
    { NULL, "LNSObject;", 0x401, 2, 3, 4, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(checkedGet);
  methods[1].selector = @selector(checkedGetWithLong:withJavaUtilConcurrentTimeUnit:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaLangException;", "()TV;^TX;", "checkedGet", "JLJavaUtilConcurrentTimeUnit;", "LJavaUtilConcurrentTimeoutException;LJavaLangException;", "(JLjava/util/concurrent/TimeUnit;)TV;^Ljava/util/concurrent/TimeoutException;^TX;", "<V:Ljava/lang/Object;X:Ljava/lang/Exception;>Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture<TV;>;", (void *)&ComGoogleCommonUtilConcurrentCheckedFuture__Annotations$0 };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentCheckedFuture = { "CheckedFuture", "com.google.common.util.concurrent", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, 6, 7 };
  return &_ComGoogleCommonUtilConcurrentCheckedFuture;
}

@end

IOSObjectArray *ComGoogleCommonUtilConcurrentCheckedFuture__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentCheckedFuture)