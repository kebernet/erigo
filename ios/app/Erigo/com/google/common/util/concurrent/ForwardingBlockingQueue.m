//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/ForwardingBlockingQueue.java
//

#include "J2ObjC_source.h"
#include "com/google/common/collect/ForwardingQueue.h"
#include "com/google/common/util/concurrent/ForwardingBlockingQueue.h"
#include "java/util/Collection.h"
#include "java/util/concurrent/BlockingQueue.h"
#include "java/util/concurrent/TimeUnit.h"

@implementation ComGoogleCommonUtilConcurrentForwardingBlockingQueue

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonUtilConcurrentForwardingBlockingQueue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaUtilConcurrentBlockingQueue>)delegate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)drainToWithJavaUtilCollection:(id<JavaUtilCollection>)c
                              withInt:(jint)maxElements {
  return [((id<JavaUtilConcurrentBlockingQueue>) nil_chk([self delegate])) drainToWithJavaUtilCollection:c withInt:maxElements];
}

- (jint)drainToWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  return [((id<JavaUtilConcurrentBlockingQueue>) nil_chk([self delegate])) drainToWithJavaUtilCollection:c];
}

- (jboolean)offerWithId:(id)e
               withLong:(jlong)timeout
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit {
  return [((id<JavaUtilConcurrentBlockingQueue>) nil_chk([self delegate])) offerWithId:e withLong:timeout withJavaUtilConcurrentTimeUnit:unit];
}

- (id)pollWithLong:(jlong)timeout
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit {
  return [((id<JavaUtilConcurrentBlockingQueue>) nil_chk([self delegate])) pollWithLong:timeout withJavaUtilConcurrentTimeUnit:unit];
}

- (void)putWithId:(id)e {
  [((id<JavaUtilConcurrentBlockingQueue>) nil_chk([self delegate])) putWithId:e];
}

- (jint)remainingCapacity {
  return [((id<JavaUtilConcurrentBlockingQueue>) nil_chk([self delegate])) remainingCapacity];
}

- (id)take {
  return [((id<JavaUtilConcurrentBlockingQueue>) nil_chk([self delegate])) take];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilConcurrentBlockingQueue;", 0x404, -1, -1, -1, 0, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, 3, -1, -1 },
    { NULL, "I", 0x1, 1, 4, -1, 5, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, 8, 9, -1, -1 },
    { NULL, "LNSObject;", 0x1, 10, 11, 8, 12, -1, -1 },
    { NULL, "V", 0x1, 13, 14, 8, 15, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, 8, 16, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(delegate);
  methods[2].selector = @selector(drainToWithJavaUtilCollection:withInt:);
  methods[3].selector = @selector(drainToWithJavaUtilCollection:);
  methods[4].selector = @selector(offerWithId:withLong:withJavaUtilConcurrentTimeUnit:);
  methods[5].selector = @selector(pollWithLong:withJavaUtilConcurrentTimeUnit:);
  methods[6].selector = @selector(putWithId:);
  methods[7].selector = @selector(remainingCapacity);
  methods[8].selector = @selector(take);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Ljava/util/concurrent/BlockingQueue<TE;>;", "drainTo", "LJavaUtilCollection;I", "(Ljava/util/Collection<-TE;>;I)I", "LJavaUtilCollection;", "(Ljava/util/Collection<-TE;>;)I", "offer", "LNSObject;JLJavaUtilConcurrentTimeUnit;", "LJavaLangInterruptedException;", "(TE;JLjava/util/concurrent/TimeUnit;)Z", "poll", "JLJavaUtilConcurrentTimeUnit;", "(JLjava/util/concurrent/TimeUnit;)TE;", "put", "LNSObject;", "(TE;)V", "()TE;", "<E:Ljava/lang/Object;>Lcom/google/common/collect/ForwardingQueue<TE;>;Ljava/util/concurrent/BlockingQueue<TE;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentForwardingBlockingQueue = { "ForwardingBlockingQueue", "com.google.common.util.concurrent", ptrTable, methods, NULL, 7, 0x401, 9, 0, -1, -1, -1, 17, -1 };
  return &_ComGoogleCommonUtilConcurrentForwardingBlockingQueue;
}

@end

void ComGoogleCommonUtilConcurrentForwardingBlockingQueue_init(ComGoogleCommonUtilConcurrentForwardingBlockingQueue *self) {
  ComGoogleCommonCollectForwardingQueue_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentForwardingBlockingQueue)
