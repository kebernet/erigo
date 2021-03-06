//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/AbstractSortedSetMultimap.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/collect/AbstractSetMultimap.h"
#include "com/google/common/collect/AbstractSortedSetMultimap.h"
#include "com/google/common/collect/ImmutableSortedSet.h"
#include "com/google/common/collect/RegularImmutableSortedSet.h"
#include "java/lang/Iterable.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Comparator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/SortedSet.h"
#include "javax/annotation/Nullable.h"

#pragma clang diagnostic ignored "-Wprotocol"

inline jlong ComGoogleCommonCollectAbstractSortedSetMultimap_get_serialVersionUID();
#define ComGoogleCommonCollectAbstractSortedSetMultimap_serialVersionUID 430848587173315748LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonCollectAbstractSortedSetMultimap, serialVersionUID, jlong)

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectAbstractSortedSetMultimap__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectAbstractSortedSetMultimap__Annotations$1();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectAbstractSortedSetMultimap__Annotations$2();

@implementation ComGoogleCommonCollectAbstractSortedSetMultimap

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)map {
  ComGoogleCommonCollectAbstractSortedSetMultimap_initWithJavaUtilMap_(self, map);
  return self;
}

- (id<JavaUtilSortedSet>)createCollection {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaUtilSortedSet>)createUnmodifiableEmptyCollection {
  id<JavaUtilComparator> comparator = [self valueComparator];
  if (comparator == nil) {
    return JavaUtilCollections_unmodifiableSortedSetWithJavaUtilSortedSet_([self createCollection]);
  }
  else {
    return ComGoogleCommonCollectImmutableSortedSet_emptySetWithJavaUtilComparator_([self valueComparator]);
  }
}

- (id<JavaUtilSortedSet>)getWithId:(id)key {
  return (id<JavaUtilSortedSet>) cast_check([super getWithId:key], JavaUtilSortedSet_class_());
}

- (id<JavaUtilSortedSet>)removeAllWithId:(id)key {
  return (id<JavaUtilSortedSet>) cast_check([super removeAllWithId:key], JavaUtilSortedSet_class_());
}

- (id<JavaUtilSortedSet>)replaceValuesWithId:(id)key
                        withJavaLangIterable:(id<JavaLangIterable>)values {
  return (id<JavaUtilSortedSet>) cast_check([super replaceValuesWithId:key withJavaLangIterable:values], JavaUtilSortedSet_class_());
}

- (id<JavaUtilMap>)asMap {
  return [super asMap];
}

- (id<JavaUtilCollection>)values {
  return [super values];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, "LJavaUtilSortedSet;", 0x400, -1, -1, -1, 2, -1, -1 },
    { NULL, "LJavaUtilSortedSet;", 0x0, -1, -1, -1, 2, -1, -1 },
    { NULL, "LJavaUtilSortedSet;", 0x1, 3, 4, -1, 5, -1, 6 },
    { NULL, "LJavaUtilSortedSet;", 0x1, 7, 4, -1, 8, -1, 9 },
    { NULL, "LJavaUtilSortedSet;", 0x1, 10, 11, -1, 12, -1, 13 },
    { NULL, "LJavaUtilMap;", 0x1, -1, -1, -1, 14, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, -1, -1, -1, 15, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(createCollection);
  methods[2].selector = @selector(createUnmodifiableEmptyCollection);
  methods[3].selector = @selector(getWithId:);
  methods[4].selector = @selector(removeAllWithId:);
  methods[5].selector = @selector(replaceValuesWithId:withJavaLangIterable:);
  methods[6].selector = @selector(asMap);
  methods[7].selector = @selector(values);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonCollectAbstractSortedSetMultimap_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;)V", "()Ljava/util/SortedSet<TV;>;", "get", "LNSObject;", "(TK;)Ljava/util/SortedSet<TV;>;", (void *)&ComGoogleCommonCollectAbstractSortedSetMultimap__Annotations$0, "removeAll", "(Ljava/lang/Object;)Ljava/util/SortedSet<TV;>;", (void *)&ComGoogleCommonCollectAbstractSortedSetMultimap__Annotations$1, "replaceValues", "LNSObject;LJavaLangIterable;", "(TK;Ljava/lang/Iterable<+TV;>;)Ljava/util/SortedSet<TV;>;", (void *)&ComGoogleCommonCollectAbstractSortedSetMultimap__Annotations$2, "()Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;", "()Ljava/util/Collection<TV;>;", "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;Lcom/google/common/collect/SortedSetMultimap<TK;TV;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectAbstractSortedSetMultimap = { "AbstractSortedSetMultimap", "com.google.common.collect", ptrTable, methods, fields, 7, 0x400, 8, 1, -1, -1, -1, 16, -1 };
  return &_ComGoogleCommonCollectAbstractSortedSetMultimap;
}

@end

void ComGoogleCommonCollectAbstractSortedSetMultimap_initWithJavaUtilMap_(ComGoogleCommonCollectAbstractSortedSetMultimap *self, id<JavaUtilMap> map) {
  ComGoogleCommonCollectAbstractSetMultimap_initWithJavaUtilMap_(self, map);
}

IOSObjectArray *ComGoogleCommonCollectAbstractSortedSetMultimap__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonCollectAbstractSortedSetMultimap__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonCollectAbstractSortedSetMultimap__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectAbstractSortedSetMultimap)
