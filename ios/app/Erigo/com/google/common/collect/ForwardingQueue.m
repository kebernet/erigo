//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ForwardingQueue.java
//

#include "J2ObjC_source.h"
#include "com/google/common/collect/ForwardingCollection.h"
#include "com/google/common/collect/ForwardingQueue.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/Queue.h"

@implementation ComGoogleCommonCollectForwardingQueue

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCollectForwardingQueue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaUtilQueue>)delegate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)offerWithId:(id)o {
  return [((id<JavaUtilQueue>) nil_chk([self delegate])) offerWithId:o];
}

- (id)poll {
  return [((id<JavaUtilQueue>) nil_chk([self delegate])) poll];
}

- (id)remove {
  return [((id<JavaUtilQueue>) nil_chk([self delegate])) remove];
}

- (id)peek {
  return [((id<JavaUtilQueue>) nil_chk([self delegate])) peek];
}

- (id)element {
  return [((id<JavaUtilQueue>) nil_chk([self delegate])) element];
}

- (jboolean)standardOfferWithId:(id)e {
  @try {
    return [self addWithId:e];
  }
  @catch (JavaLangIllegalStateException *caught) {
    return false;
  }
}

- (id)standardPeek {
  @try {
    return [self element];
  }
  @catch (JavaUtilNoSuchElementException *caught) {
    return nil;
  }
}

- (id)standardPoll {
  @try {
    return [self remove];
  }
  @catch (JavaUtilNoSuchElementException *caught) {
    return nil;
  }
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilQueue;", 0x404, -1, -1, -1, 0, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, 3, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "Z", 0x4, 5, 2, -1, 3, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, 4, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(delegate);
  methods[2].selector = @selector(offerWithId:);
  methods[3].selector = @selector(poll);
  methods[4].selector = @selector(remove);
  methods[5].selector = @selector(peek);
  methods[6].selector = @selector(element);
  methods[7].selector = @selector(standardOfferWithId:);
  methods[8].selector = @selector(standardPeek);
  methods[9].selector = @selector(standardPoll);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Ljava/util/Queue<TE;>;", "offer", "LNSObject;", "(TE;)Z", "()TE;", "standardOffer", "<E:Ljava/lang/Object;>Lcom/google/common/collect/ForwardingCollection<TE;>;Ljava/util/Queue<TE;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectForwardingQueue = { "ForwardingQueue", "com.google.common.collect", ptrTable, methods, NULL, 7, 0x401, 10, 0, -1, -1, -1, 6, -1 };
  return &_ComGoogleCommonCollectForwardingQueue;
}

@end

void ComGoogleCommonCollectForwardingQueue_init(ComGoogleCommonCollectForwardingQueue *self) {
  ComGoogleCommonCollectForwardingCollection_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectForwardingQueue)
