//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/base/FinalizableWeakReference.java
//

#include "J2ObjC_source.h"
#include "com/google/common/base/FinalizableReferenceQueue.h"
#include "com/google/common/base/FinalizableWeakReference.h"
#include "java/lang/ref/ReferenceQueue.h"
#include "java/lang/ref/WeakReference.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation ComGoogleCommonBaseFinalizableWeakReference

- (instancetype)initWithId:(id)referent
withComGoogleCommonBaseFinalizableReferenceQueue:(ComGoogleCommonBaseFinalizableReferenceQueue *)queue {
  ComGoogleCommonBaseFinalizableWeakReference_initWithId_withComGoogleCommonBaseFinalizableReferenceQueue_(self, referent, queue);
  return self;
}

- (void)dealloc {
  JreCheckFinalize(self, [ComGoogleCommonBaseFinalizableWeakReference class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:withComGoogleCommonBaseFinalizableReferenceQueue:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSObject;LComGoogleCommonBaseFinalizableReferenceQueue;", "(TT;Lcom/google/common/base/FinalizableReferenceQueue;)V", "<T:Ljava/lang/Object;>Ljava/lang/ref/WeakReference<TT;>;Lcom/google/common/base/FinalizableReference;" };
  static const J2ObjcClassInfo _ComGoogleCommonBaseFinalizableWeakReference = { "FinalizableWeakReference", "com.google.common.base", ptrTable, methods, NULL, 7, 0x401, 1, 0, -1, -1, -1, 2, -1 };
  return &_ComGoogleCommonBaseFinalizableWeakReference;
}

@end

void ComGoogleCommonBaseFinalizableWeakReference_initWithId_withComGoogleCommonBaseFinalizableReferenceQueue_(ComGoogleCommonBaseFinalizableWeakReference *self, id referent, ComGoogleCommonBaseFinalizableReferenceQueue *queue) {
  JavaLangRefWeakReference_initWithId_withJavaLangRefReferenceQueue_(self, referent, ((ComGoogleCommonBaseFinalizableReferenceQueue *) nil_chk(queue))->queue_);
  [queue cleanUp];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonBaseFinalizableWeakReference)
