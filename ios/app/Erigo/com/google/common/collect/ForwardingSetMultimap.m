//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ForwardingSetMultimap.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/collect/ForwardingMultimap.h"
#include "com/google/common/collect/ForwardingSetMultimap.h"
#include "com/google/common/collect/SetMultimap.h"
#include "java/lang/Iterable.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Set.h"
#include "javax/annotation/Nullable.h"

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectForwardingSetMultimap__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectForwardingSetMultimap__Annotations$1();

@implementation ComGoogleCommonCollectForwardingSetMultimap

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCollectForwardingSetMultimap_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<ComGoogleCommonCollectSetMultimap>)delegate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaUtilSet>)entries {
  return [((id<ComGoogleCommonCollectSetMultimap>) nil_chk([self delegate])) entries];
}

- (id<JavaUtilSet>)getWithId:(id)key {
  return [((id<ComGoogleCommonCollectSetMultimap>) nil_chk([self delegate])) getWithId:key];
}

- (id<JavaUtilSet>)removeAllWithId:(id)key {
  return [((id<ComGoogleCommonCollectSetMultimap>) nil_chk([self delegate])) removeAllWithId:key];
}

- (id<JavaUtilSet>)replaceValuesWithId:(id)key
                  withJavaLangIterable:(id<JavaLangIterable>)values {
  return [((id<ComGoogleCommonCollectSetMultimap>) nil_chk([self delegate])) replaceValuesWithId:key withJavaLangIterable:values];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCollectSetMultimap;", 0x404, -1, -1, -1, 0, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, 2, 3, -1, 4, -1, 5 },
    { NULL, "LJavaUtilSet;", 0x1, 6, 3, -1, 7, -1, 8 },
    { NULL, "LJavaUtilSet;", 0x1, 9, 10, -1, 11, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(delegate);
  methods[2].selector = @selector(entries);
  methods[3].selector = @selector(getWithId:);
  methods[4].selector = @selector(removeAllWithId:);
  methods[5].selector = @selector(replaceValuesWithId:withJavaLangIterable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Lcom/google/common/collect/SetMultimap<TK;TV;>;", "()Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;", "get", "LNSObject;", "(TK;)Ljava/util/Set<TV;>;", (void *)&ComGoogleCommonCollectForwardingSetMultimap__Annotations$0, "removeAll", "(Ljava/lang/Object;)Ljava/util/Set<TV;>;", (void *)&ComGoogleCommonCollectForwardingSetMultimap__Annotations$1, "replaceValues", "LNSObject;LJavaLangIterable;", "(TK;Ljava/lang/Iterable<+TV;>;)Ljava/util/Set<TV;>;", "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lcom/google/common/collect/ForwardingMultimap<TK;TV;>;Lcom/google/common/collect/SetMultimap<TK;TV;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectForwardingSetMultimap = { "ForwardingSetMultimap", "com.google.common.collect", ptrTable, methods, NULL, 7, 0x401, 6, 0, -1, -1, -1, 12, -1 };
  return &_ComGoogleCommonCollectForwardingSetMultimap;
}

@end

void ComGoogleCommonCollectForwardingSetMultimap_init(ComGoogleCommonCollectForwardingSetMultimap *self) {
  ComGoogleCommonCollectForwardingMultimap_init(self);
}

IOSObjectArray *ComGoogleCommonCollectForwardingSetMultimap__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonCollectForwardingSetMultimap__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectForwardingSetMultimap)
