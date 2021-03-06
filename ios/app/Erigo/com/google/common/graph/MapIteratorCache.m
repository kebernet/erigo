//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/graph/MapIteratorCache.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/collect/UnmodifiableIterator.h"
#include "com/google/common/graph/MapIteratorCache.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/AbstractSet.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonGraphMapIteratorCache () {
 @public
  id<JavaUtilMap> backingMap_;
  id<JavaUtilMap_Entry> entrySetCache_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonGraphMapIteratorCache, backingMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComGoogleCommonGraphMapIteratorCache, entrySetCache_, id<JavaUtilMap_Entry>)

__attribute__((unused)) static id ComGoogleCommonGraphMapIteratorCache_getWithoutCachingWithId_(ComGoogleCommonGraphMapIteratorCache *self, id key);

__attribute__((unused)) static jboolean ComGoogleCommonGraphMapIteratorCache_containsKeyWithId_(ComGoogleCommonGraphMapIteratorCache *self, id key);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$1();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$2();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$3();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$4();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$5();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$6();

@interface ComGoogleCommonGraphMapIteratorCache_1 : JavaUtilAbstractSet {
 @public
  ComGoogleCommonGraphMapIteratorCache *this$0_;
}

- (instancetype)initWithComGoogleCommonGraphMapIteratorCache:(ComGoogleCommonGraphMapIteratorCache *)outer$;

- (ComGoogleCommonCollectUnmodifiableIterator *)iterator;

- (jint)size;

- (jboolean)containsWithId:(id)key;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonGraphMapIteratorCache_1)

__attribute__((unused)) static void ComGoogleCommonGraphMapIteratorCache_1_initWithComGoogleCommonGraphMapIteratorCache_(ComGoogleCommonGraphMapIteratorCache_1 *self, ComGoogleCommonGraphMapIteratorCache *outer$);

__attribute__((unused)) static ComGoogleCommonGraphMapIteratorCache_1 *new_ComGoogleCommonGraphMapIteratorCache_1_initWithComGoogleCommonGraphMapIteratorCache_(ComGoogleCommonGraphMapIteratorCache *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonGraphMapIteratorCache_1 *create_ComGoogleCommonGraphMapIteratorCache_1_initWithComGoogleCommonGraphMapIteratorCache_(ComGoogleCommonGraphMapIteratorCache *outer$);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphMapIteratorCache_1__Annotations$0();

@interface ComGoogleCommonGraphMapIteratorCache_1_1 : ComGoogleCommonCollectUnmodifiableIterator {
 @public
  ComGoogleCommonGraphMapIteratorCache_1 *this$0_;
  id<JavaUtilIterator> val$entryIterator_;
}

- (instancetype)initWithComGoogleCommonGraphMapIteratorCache_1:(ComGoogleCommonGraphMapIteratorCache_1 *)outer$
                                          withJavaUtilIterator:(id<JavaUtilIterator>)capture$0;

- (jboolean)hasNext;

- (id)next;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonGraphMapIteratorCache_1_1)

__attribute__((unused)) static void ComGoogleCommonGraphMapIteratorCache_1_1_initWithComGoogleCommonGraphMapIteratorCache_1_withJavaUtilIterator_(ComGoogleCommonGraphMapIteratorCache_1_1 *self, ComGoogleCommonGraphMapIteratorCache_1 *outer$, id<JavaUtilIterator> capture$0);

__attribute__((unused)) static ComGoogleCommonGraphMapIteratorCache_1_1 *new_ComGoogleCommonGraphMapIteratorCache_1_1_initWithComGoogleCommonGraphMapIteratorCache_1_withJavaUtilIterator_(ComGoogleCommonGraphMapIteratorCache_1 *outer$, id<JavaUtilIterator> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonGraphMapIteratorCache_1_1 *create_ComGoogleCommonGraphMapIteratorCache_1_1_initWithComGoogleCommonGraphMapIteratorCache_1_withJavaUtilIterator_(ComGoogleCommonGraphMapIteratorCache_1 *outer$, id<JavaUtilIterator> capture$0);

@implementation ComGoogleCommonGraphMapIteratorCache

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)backingMap {
  ComGoogleCommonGraphMapIteratorCache_initWithJavaUtilMap_(self, backingMap);
  return self;
}

- (id)putWithId:(id)key
         withId:(id)value {
  [self clearCache];
  return [((id<JavaUtilMap>) nil_chk(backingMap_)) putWithId:key withId:value];
}

- (id)removeWithId:(id)key {
  [self clearCache];
  return [((id<JavaUtilMap>) nil_chk(backingMap_)) removeWithId:key];
}

- (void)clear {
  [self clearCache];
  [((id<JavaUtilMap>) nil_chk(backingMap_)) clear];
}

- (id)getWithId:(id)key {
  id value = [self getIfCachedWithId:key];
  return (value != nil) ? value : ComGoogleCommonGraphMapIteratorCache_getWithoutCachingWithId_(self, key);
}

- (id)getWithoutCachingWithId:(id)key {
  return ComGoogleCommonGraphMapIteratorCache_getWithoutCachingWithId_(self, key);
}

- (jboolean)containsKeyWithId:(id)key {
  return ComGoogleCommonGraphMapIteratorCache_containsKeyWithId_(self, key);
}

- (id<JavaUtilSet>)unmodifiableKeySet {
  return new_ComGoogleCommonGraphMapIteratorCache_1_initWithComGoogleCommonGraphMapIteratorCache_(self);
}

- (id)getIfCachedWithId:(id)key {
  id<JavaUtilMap_Entry> entry_ = entrySetCache_;
  if (entry_ != nil && [entry_ getKey] == key) {
    return [entry_ getValue];
  }
  return nil;
}

- (void)clearCache {
  entrySetCache_ = nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 2, 3, -1, 4, -1, 5 },
    { NULL, "LNSObject;", 0x1, 6, 7, -1, 8, -1, 9 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 10, 7, -1, 8, -1, 11 },
    { NULL, "LNSObject;", 0x11, 12, 7, -1, 8, -1, 13 },
    { NULL, "Z", 0x11, 14, 7, -1, -1, -1, 15 },
    { NULL, "LJavaUtilSet;", 0x11, -1, -1, -1, 16, -1, -1 },
    { NULL, "LNSObject;", 0x4, 17, 7, -1, 8, -1, 18 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(putWithId:withId:);
  methods[2].selector = @selector(removeWithId:);
  methods[3].selector = @selector(clear);
  methods[4].selector = @selector(getWithId:);
  methods[5].selector = @selector(getWithoutCachingWithId:);
  methods[6].selector = @selector(containsKeyWithId:);
  methods[7].selector = @selector(unmodifiableKeySet);
  methods[8].selector = @selector(getIfCachedWithId:);
  methods[9].selector = @selector(clearCache);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "backingMap_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 19, -1 },
    { "entrySetCache_", "LJavaUtilMap_Entry;", .constantValue.asLong = 0, 0x82, -1, -1, 20, 21 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<TK;TV;>;)V", "put", "LNSObject;LNSObject;", "(TK;TV;)TV;", (void *)&ComGoogleCommonGraphMapIteratorCache__Annotations$0, "remove", "LNSObject;", "(Ljava/lang/Object;)TV;", (void *)&ComGoogleCommonGraphMapIteratorCache__Annotations$1, "get", (void *)&ComGoogleCommonGraphMapIteratorCache__Annotations$2, "getWithoutCaching", (void *)&ComGoogleCommonGraphMapIteratorCache__Annotations$3, "containsKey", (void *)&ComGoogleCommonGraphMapIteratorCache__Annotations$4, "()Ljava/util/Set<TK;>;", "getIfCached", (void *)&ComGoogleCommonGraphMapIteratorCache__Annotations$5, "Ljava/util/Map<TK;TV;>;", "Ljava/util/Map$Entry<TK;TV;>;", (void *)&ComGoogleCommonGraphMapIteratorCache__Annotations$6, "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _ComGoogleCommonGraphMapIteratorCache = { "MapIteratorCache", "com.google.common.graph", ptrTable, methods, fields, 7, 0x0, 10, 2, -1, -1, -1, 22, -1 };
  return &_ComGoogleCommonGraphMapIteratorCache;
}

@end

void ComGoogleCommonGraphMapIteratorCache_initWithJavaUtilMap_(ComGoogleCommonGraphMapIteratorCache *self, id<JavaUtilMap> backingMap) {
  NSObject_init(self);
  self->backingMap_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(backingMap);
}

ComGoogleCommonGraphMapIteratorCache *new_ComGoogleCommonGraphMapIteratorCache_initWithJavaUtilMap_(id<JavaUtilMap> backingMap) {
  J2OBJC_NEW_IMPL(ComGoogleCommonGraphMapIteratorCache, initWithJavaUtilMap_, backingMap)
}

ComGoogleCommonGraphMapIteratorCache *create_ComGoogleCommonGraphMapIteratorCache_initWithJavaUtilMap_(id<JavaUtilMap> backingMap) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonGraphMapIteratorCache, initWithJavaUtilMap_, backingMap)
}

id ComGoogleCommonGraphMapIteratorCache_getWithoutCachingWithId_(ComGoogleCommonGraphMapIteratorCache *self, id key) {
  return [((id<JavaUtilMap>) nil_chk(self->backingMap_)) getWithId:key];
}

jboolean ComGoogleCommonGraphMapIteratorCache_containsKeyWithId_(ComGoogleCommonGraphMapIteratorCache *self, id key) {
  return [self getIfCachedWithId:key] != nil || [((id<JavaUtilMap>) nil_chk(self->backingMap_)) containsKeyWithId:key];
}

IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$4() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$5() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonGraphMapIteratorCache__Annotations$6() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonGraphMapIteratorCache)

@implementation ComGoogleCommonGraphMapIteratorCache_1

- (instancetype)initWithComGoogleCommonGraphMapIteratorCache:(ComGoogleCommonGraphMapIteratorCache *)outer$ {
  ComGoogleCommonGraphMapIteratorCache_1_initWithComGoogleCommonGraphMapIteratorCache_(self, outer$);
  return self;
}

- (ComGoogleCommonCollectUnmodifiableIterator *)iterator {
  id<JavaUtilIterator> entryIterator = [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(this$0_->backingMap_)) entrySet])) iterator];
  return new_ComGoogleCommonGraphMapIteratorCache_1_1_initWithComGoogleCommonGraphMapIteratorCache_1_withJavaUtilIterator_(self, entryIterator);
}

- (jint)size {
  return [((id<JavaUtilMap>) nil_chk(this$0_->backingMap_)) size];
}

- (jboolean)containsWithId:(id)key {
  return ComGoogleCommonGraphMapIteratorCache_containsKeyWithId_(this$0_, key);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCollectUnmodifiableIterator;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, 3 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonGraphMapIteratorCache:);
  methods[1].selector = @selector(iterator);
  methods[2].selector = @selector(size);
  methods[3].selector = @selector(containsWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LComGoogleCommonGraphMapIteratorCache;", .constantValue.asLong = 0, 0x1012, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "()Lcom/google/common/collect/UnmodifiableIterator<TK;>;", "contains", "LNSObject;", (void *)&ComGoogleCommonGraphMapIteratorCache_1__Annotations$0, "Lcom/google/common/graph/MapIteratorCache<TK;TV;>;", "LComGoogleCommonGraphMapIteratorCache;", "unmodifiableKeySet", "Ljava/util/AbstractSet<TK;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonGraphMapIteratorCache_1 = { "", "com.google.common.graph", ptrTable, methods, fields, 7, 0x8018, 4, 1, 5, -1, 6, 7, -1 };
  return &_ComGoogleCommonGraphMapIteratorCache_1;
}

@end

void ComGoogleCommonGraphMapIteratorCache_1_initWithComGoogleCommonGraphMapIteratorCache_(ComGoogleCommonGraphMapIteratorCache_1 *self, ComGoogleCommonGraphMapIteratorCache *outer$) {
  self->this$0_ = outer$;
  JavaUtilAbstractSet_init(self);
}

ComGoogleCommonGraphMapIteratorCache_1 *new_ComGoogleCommonGraphMapIteratorCache_1_initWithComGoogleCommonGraphMapIteratorCache_(ComGoogleCommonGraphMapIteratorCache *outer$) {
  J2OBJC_NEW_IMPL(ComGoogleCommonGraphMapIteratorCache_1, initWithComGoogleCommonGraphMapIteratorCache_, outer$)
}

ComGoogleCommonGraphMapIteratorCache_1 *create_ComGoogleCommonGraphMapIteratorCache_1_initWithComGoogleCommonGraphMapIteratorCache_(ComGoogleCommonGraphMapIteratorCache *outer$) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonGraphMapIteratorCache_1, initWithComGoogleCommonGraphMapIteratorCache_, outer$)
}

IOSObjectArray *ComGoogleCommonGraphMapIteratorCache_1__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

@implementation ComGoogleCommonGraphMapIteratorCache_1_1

- (instancetype)initWithComGoogleCommonGraphMapIteratorCache_1:(ComGoogleCommonGraphMapIteratorCache_1 *)outer$
                                          withJavaUtilIterator:(id<JavaUtilIterator>)capture$0 {
  ComGoogleCommonGraphMapIteratorCache_1_1_initWithComGoogleCommonGraphMapIteratorCache_1_withJavaUtilIterator_(self, outer$, capture$0);
  return self;
}

- (jboolean)hasNext {
  return [((id<JavaUtilIterator>) nil_chk(val$entryIterator_)) hasNext];
}

- (id)next {
  id<JavaUtilMap_Entry> entry_ = [((id<JavaUtilIterator>) nil_chk(val$entryIterator_)) next];
  this$0_->this$0_->entrySetCache_ = entry_;
  return [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 0, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonGraphMapIteratorCache_1:withJavaUtilIterator:);
  methods[1].selector = @selector(hasNext);
  methods[2].selector = @selector(next);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LComGoogleCommonGraphMapIteratorCache_1;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$entryIterator_", "LJavaUtilIterator;", .constantValue.asLong = 0, 0x1012, -1, -1, 1, -1 },
  };
  static const void *ptrTable[] = { "()TK;", "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;", "LComGoogleCommonGraphMapIteratorCache_1;", "iterator", "Lcom/google/common/collect/UnmodifiableIterator<TK;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonGraphMapIteratorCache_1_1 = { "", "com.google.common.graph", ptrTable, methods, fields, 7, 0x8018, 3, 2, 2, -1, 3, 4, -1 };
  return &_ComGoogleCommonGraphMapIteratorCache_1_1;
}

@end

void ComGoogleCommonGraphMapIteratorCache_1_1_initWithComGoogleCommonGraphMapIteratorCache_1_withJavaUtilIterator_(ComGoogleCommonGraphMapIteratorCache_1_1 *self, ComGoogleCommonGraphMapIteratorCache_1 *outer$, id<JavaUtilIterator> capture$0) {
  self->this$0_ = outer$;
  self->val$entryIterator_ = capture$0;
  ComGoogleCommonCollectUnmodifiableIterator_init(self);
}

ComGoogleCommonGraphMapIteratorCache_1_1 *new_ComGoogleCommonGraphMapIteratorCache_1_1_initWithComGoogleCommonGraphMapIteratorCache_1_withJavaUtilIterator_(ComGoogleCommonGraphMapIteratorCache_1 *outer$, id<JavaUtilIterator> capture$0) {
  J2OBJC_NEW_IMPL(ComGoogleCommonGraphMapIteratorCache_1_1, initWithComGoogleCommonGraphMapIteratorCache_1_withJavaUtilIterator_, outer$, capture$0)
}

ComGoogleCommonGraphMapIteratorCache_1_1 *create_ComGoogleCommonGraphMapIteratorCache_1_1_initWithComGoogleCommonGraphMapIteratorCache_1_withJavaUtilIterator_(ComGoogleCommonGraphMapIteratorCache_1 *outer$, id<JavaUtilIterator> capture$0) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonGraphMapIteratorCache_1_1, initWithComGoogleCommonGraphMapIteratorCache_1_withJavaUtilIterator_, outer$, capture$0)
}
