//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/cache/ForwardingLoadingCache.java
//

#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/cache/ForwardingCache.h"
#include "com/google/common/cache/ForwardingLoadingCache.h"
#include "com/google/common/cache/LoadingCache.h"
#include "com/google/common/collect/ImmutableMap.h"
#include "java/lang/Iterable.h"
#include "java/util/function/Function.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface ComGoogleCommonCacheForwardingLoadingCache_SimpleForwardingLoadingCache () {
 @public
  id<ComGoogleCommonCacheLoadingCache> delegate_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonCacheForwardingLoadingCache_SimpleForwardingLoadingCache, delegate_, id<ComGoogleCommonCacheLoadingCache>)

@implementation ComGoogleCommonCacheForwardingLoadingCache

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCacheForwardingLoadingCache_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<ComGoogleCommonCacheLoadingCache>)delegate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)getWithId:(id)key {
  return [((id<ComGoogleCommonCacheLoadingCache>) nil_chk([self delegate])) getWithId:key];
}

- (id)getUncheckedWithId:(id)key {
  return [((id<ComGoogleCommonCacheLoadingCache>) nil_chk([self delegate])) getUncheckedWithId:key];
}

- (ComGoogleCommonCollectImmutableMap *)getAllWithJavaLangIterable:(id<JavaLangIterable>)keys {
  return [((id<ComGoogleCommonCacheLoadingCache>) nil_chk([self delegate])) getAllWithJavaLangIterable:keys];
}

- (id)applyWithId:(id)key {
  return [((id<ComGoogleCommonCacheLoadingCache>) nil_chk([self delegate])) applyWithId:key];
}

- (void)refreshWithId:(id)key {
  [((id<ComGoogleCommonCacheLoadingCache>) nil_chk([self delegate])) refreshWithId:key];
}

- (id<JavaUtilFunctionFunction>)composeWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_composeWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilFunctionFunction>)andThenWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_andThenWithJavaUtilFunctionFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCacheLoadingCache;", 0x404, -1, -1, -1, 0, -1, -1 },
    { NULL, "LNSObject;", 0x1, 1, 2, 3, 4, -1, -1 },
    { NULL, "LNSObject;", 0x1, 5, 2, -1, 4, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableMap;", 0x1, 6, 7, 3, 8, -1, -1 },
    { NULL, "LNSObject;", 0x1, 9, 2, -1, 4, -1, -1 },
    { NULL, "V", 0x1, 10, 2, -1, 11, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(delegate);
  methods[2].selector = @selector(getWithId:);
  methods[3].selector = @selector(getUncheckedWithId:);
  methods[4].selector = @selector(getAllWithJavaLangIterable:);
  methods[5].selector = @selector(applyWithId:);
  methods[6].selector = @selector(refreshWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Lcom/google/common/cache/LoadingCache<TK;TV;>;", "get", "LNSObject;", "LJavaUtilConcurrentExecutionException;", "(TK;)TV;", "getUnchecked", "getAll", "LJavaLangIterable;", "(Ljava/lang/Iterable<+TK;>;)Lcom/google/common/collect/ImmutableMap<TK;TV;>;", "apply", "refresh", "(TK;)V", "LComGoogleCommonCacheForwardingLoadingCache_SimpleForwardingLoadingCache;", "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lcom/google/common/cache/ForwardingCache<TK;TV;>;Lcom/google/common/cache/LoadingCache<TK;TV;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCacheForwardingLoadingCache = { "ForwardingLoadingCache", "com.google.common.cache", ptrTable, methods, NULL, 7, 0x401, 7, 0, -1, 12, -1, 13, -1 };
  return &_ComGoogleCommonCacheForwardingLoadingCache;
}

@end

void ComGoogleCommonCacheForwardingLoadingCache_init(ComGoogleCommonCacheForwardingLoadingCache *self) {
  ComGoogleCommonCacheForwardingCache_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCacheForwardingLoadingCache)

@implementation ComGoogleCommonCacheForwardingLoadingCache_SimpleForwardingLoadingCache

- (instancetype)initWithComGoogleCommonCacheLoadingCache:(id<ComGoogleCommonCacheLoadingCache>)delegate {
  ComGoogleCommonCacheForwardingLoadingCache_SimpleForwardingLoadingCache_initWithComGoogleCommonCacheLoadingCache_(self, delegate);
  return self;
}

- (id<ComGoogleCommonCacheLoadingCache>)delegate {
  return delegate_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, "LComGoogleCommonCacheLoadingCache;", 0x14, -1, -1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonCacheLoadingCache:);
  methods[1].selector = @selector(delegate);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LComGoogleCommonCacheLoadingCache;", .constantValue.asLong = 0, 0x12, -1, -1, 3, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonCacheLoadingCache;", "(Lcom/google/common/cache/LoadingCache<TK;TV;>;)V", "()Lcom/google/common/cache/LoadingCache<TK;TV;>;", "Lcom/google/common/cache/LoadingCache<TK;TV;>;", "LComGoogleCommonCacheForwardingLoadingCache;", "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lcom/google/common/cache/ForwardingLoadingCache<TK;TV;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCacheForwardingLoadingCache_SimpleForwardingLoadingCache = { "SimpleForwardingLoadingCache", "com.google.common.cache", ptrTable, methods, fields, 7, 0x409, 2, 1, 4, -1, -1, 5, -1 };
  return &_ComGoogleCommonCacheForwardingLoadingCache_SimpleForwardingLoadingCache;
}

@end

void ComGoogleCommonCacheForwardingLoadingCache_SimpleForwardingLoadingCache_initWithComGoogleCommonCacheLoadingCache_(ComGoogleCommonCacheForwardingLoadingCache_SimpleForwardingLoadingCache *self, id<ComGoogleCommonCacheLoadingCache> delegate) {
  ComGoogleCommonCacheForwardingLoadingCache_init(self);
  self->delegate_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(delegate);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCacheForwardingLoadingCache_SimpleForwardingLoadingCache)
