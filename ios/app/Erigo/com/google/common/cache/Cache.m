//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/cache/Cache.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/cache/Cache.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonCacheCache : NSObject

@end

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCacheCache__Annotations$0();

@implementation ComGoogleCommonCacheCache

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, 0, 1, -1, 2, 3, -1 },
    { NULL, "LNSObject;", 0x401, 4, 5, 6, 7, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableMap;", 0x401, 8, 9, -1, 10, -1, -1 },
    { NULL, "V", 0x401, 11, 12, -1, 13, -1, -1 },
    { NULL, "V", 0x401, 14, 15, -1, 16, -1, -1 },
    { NULL, "V", 0x401, 17, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 18, 9, -1, 19, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCacheCacheStats;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilConcurrentConcurrentMap;", 0x401, -1, -1, -1, 20, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getIfPresentWithId:);
  methods[1].selector = @selector(getWithId:withJavaUtilConcurrentCallable:);
  methods[2].selector = @selector(getAllPresentWithJavaLangIterable:);
  methods[3].selector = @selector(putWithId:withId:);
  methods[4].selector = @selector(putAllWithJavaUtilMap:);
  methods[5].selector = @selector(invalidateWithId:);
  methods[6].selector = @selector(invalidateAllWithJavaLangIterable:);
  methods[7].selector = @selector(invalidateAll);
  methods[8].selector = @selector(size);
  methods[9].selector = @selector(stats);
  methods[10].selector = @selector(asMap);
  methods[11].selector = @selector(cleanUp);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getIfPresent", "LNSObject;", "(Ljava/lang/Object;)TV;", (void *)&ComGoogleCommonCacheCache__Annotations$0, "get", "LNSObject;LJavaUtilConcurrentCallable;", "LJavaUtilConcurrentExecutionException;", "(TK;Ljava/util/concurrent/Callable<+TV;>;)TV;", "getAllPresent", "LJavaLangIterable;", "(Ljava/lang/Iterable<*>;)Lcom/google/common/collect/ImmutableMap<TK;TV;>;", "put", "LNSObject;LNSObject;", "(TK;TV;)V", "putAll", "LJavaUtilMap;", "(Ljava/util/Map<+TK;+TV;>;)V", "invalidate", "invalidateAll", "(Ljava/lang/Iterable<*>;)V", "()Ljava/util/concurrent/ConcurrentMap<TK;TV;>;", "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _ComGoogleCommonCacheCache = { "Cache", "com.google.common.cache", ptrTable, methods, NULL, 7, 0x609, 12, 0, -1, -1, -1, 21, -1 };
  return &_ComGoogleCommonCacheCache;
}

@end

IOSObjectArray *ComGoogleCommonCacheCache__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleCommonCacheCache)