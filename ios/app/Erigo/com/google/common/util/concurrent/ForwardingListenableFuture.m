//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/ForwardingListenableFuture.java
//

#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/util/concurrent/ForwardingFuture.h"
#include "com/google/common/util/concurrent/ForwardingListenableFuture.h"
#include "com/google/common/util/concurrent/ListenableFuture.h"
#include "java/lang/Runnable.h"
#include "java/util/concurrent/Executor.h"

@interface ComGoogleCommonUtilConcurrentForwardingListenableFuture_SimpleForwardingListenableFuture () {
 @public
  id<ComGoogleCommonUtilConcurrentListenableFuture> delegate_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonUtilConcurrentForwardingListenableFuture_SimpleForwardingListenableFuture, delegate_, id<ComGoogleCommonUtilConcurrentListenableFuture>)

@implementation ComGoogleCommonUtilConcurrentForwardingListenableFuture

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonUtilConcurrentForwardingListenableFuture_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<ComGoogleCommonUtilConcurrentListenableFuture>)delegate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)addListenerWithJavaLangRunnable:(id<JavaLangRunnable>)listener
         withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)exec {
  [((id<ComGoogleCommonUtilConcurrentListenableFuture>) nil_chk([self delegate])) addListenerWithJavaLangRunnable:listener withJavaUtilConcurrentExecutor:exec];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonUtilConcurrentListenableFuture;", 0x404, -1, -1, -1, 0, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(delegate);
  methods[2].selector = @selector(addListenerWithJavaLangRunnable:withJavaUtilConcurrentExecutor:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;", "addListener", "LJavaLangRunnable;LJavaUtilConcurrentExecutor;", "LComGoogleCommonUtilConcurrentForwardingListenableFuture_SimpleForwardingListenableFuture;", "<V:Ljava/lang/Object;>Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;Lcom/google/common/util/concurrent/ListenableFuture<TV;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentForwardingListenableFuture = { "ForwardingListenableFuture", "com.google.common.util.concurrent", ptrTable, methods, NULL, 7, 0x401, 3, 0, -1, 3, -1, 4, -1 };
  return &_ComGoogleCommonUtilConcurrentForwardingListenableFuture;
}

@end

void ComGoogleCommonUtilConcurrentForwardingListenableFuture_init(ComGoogleCommonUtilConcurrentForwardingListenableFuture *self) {
  ComGoogleCommonUtilConcurrentForwardingFuture_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentForwardingListenableFuture)

@implementation ComGoogleCommonUtilConcurrentForwardingListenableFuture_SimpleForwardingListenableFuture

- (instancetype)initWithComGoogleCommonUtilConcurrentListenableFuture:(id<ComGoogleCommonUtilConcurrentListenableFuture>)delegate {
  ComGoogleCommonUtilConcurrentForwardingListenableFuture_SimpleForwardingListenableFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_(self, delegate);
  return self;
}

- (id<ComGoogleCommonUtilConcurrentListenableFuture>)delegate {
  return delegate_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, "LComGoogleCommonUtilConcurrentListenableFuture;", 0x14, -1, -1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentListenableFuture:);
  methods[1].selector = @selector(delegate);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LComGoogleCommonUtilConcurrentListenableFuture;", .constantValue.asLong = 0, 0x12, -1, -1, 3, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonUtilConcurrentListenableFuture;", "(Lcom/google/common/util/concurrent/ListenableFuture<TV;>;)V", "()Lcom/google/common/util/concurrent/ListenableFuture<TV;>;", "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;", "LComGoogleCommonUtilConcurrentForwardingListenableFuture;", "<V:Ljava/lang/Object;>Lcom/google/common/util/concurrent/ForwardingListenableFuture<TV;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentForwardingListenableFuture_SimpleForwardingListenableFuture = { "SimpleForwardingListenableFuture", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x409, 2, 1, 4, -1, -1, 5, -1 };
  return &_ComGoogleCommonUtilConcurrentForwardingListenableFuture_SimpleForwardingListenableFuture;
}

@end

void ComGoogleCommonUtilConcurrentForwardingListenableFuture_SimpleForwardingListenableFuture_initWithComGoogleCommonUtilConcurrentListenableFuture_(ComGoogleCommonUtilConcurrentForwardingListenableFuture_SimpleForwardingListenableFuture *self, id<ComGoogleCommonUtilConcurrentListenableFuture> delegate) {
  ComGoogleCommonUtilConcurrentForwardingListenableFuture_init(self);
  self->delegate_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(delegate);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentForwardingListenableFuture_SimpleForwardingListenableFuture)
