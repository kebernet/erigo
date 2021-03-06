//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/CompoundOrdering.java
//

#include "J2ObjC_source.h"
#include "com/google/common/collect/CompoundOrdering.h"
#include "com/google/common/collect/ImmutableList.h"
#include "com/google/common/collect/Ordering.h"
#include "java/lang/Iterable.h"
#include "java/util/Comparator.h"

inline jlong ComGoogleCommonCollectCompoundOrdering_get_serialVersionUID();
#define ComGoogleCommonCollectCompoundOrdering_serialVersionUID 0LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonCollectCompoundOrdering, serialVersionUID, jlong)

@implementation ComGoogleCommonCollectCompoundOrdering

- (instancetype)initWithJavaUtilComparator:(id<JavaUtilComparator>)primary
                    withJavaUtilComparator:(id<JavaUtilComparator>)secondary {
  ComGoogleCommonCollectCompoundOrdering_initWithJavaUtilComparator_withJavaUtilComparator_(self, primary, secondary);
  return self;
}

- (instancetype)initWithJavaLangIterable:(id<JavaLangIterable>)comparators {
  ComGoogleCommonCollectCompoundOrdering_initWithJavaLangIterable_(self, comparators);
  return self;
}

- (jint)compareWithId:(id)left
               withId:(id)right {
  jint size = [((ComGoogleCommonCollectImmutableList *) nil_chk(comparators_)) size];
  for (jint i = 0; i < size; i++) {
    jint result = [((id<JavaUtilComparator>) nil_chk([comparators_ getWithInt:i])) compareWithId:left withId:right];
    if (result != 0) {
      return result;
    }
  }
  return 0;
}

- (jboolean)isEqual:(id)object {
  if (object == self) {
    return true;
  }
  if ([object isKindOfClass:[ComGoogleCommonCollectCompoundOrdering class]]) {
    ComGoogleCommonCollectCompoundOrdering *that = (ComGoogleCommonCollectCompoundOrdering *) cast_chk(object, [ComGoogleCommonCollectCompoundOrdering class]);
    return [((ComGoogleCommonCollectImmutableList *) nil_chk(self->comparators_)) isEqual:((ComGoogleCommonCollectCompoundOrdering *) nil_chk(that))->comparators_];
  }
  return false;
}

- (NSUInteger)hash {
  return ((jint) [((ComGoogleCommonCollectImmutableList *) nil_chk(comparators_)) hash]);
}

- (NSString *)description {
  return JreStrcat("$@C", @"Ordering.compound(", comparators_, ')');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x0, -1, 2, -1, 3, -1, -1 },
    { NULL, "I", 0x1, 4, 5, -1, 6, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilComparator:withJavaUtilComparator:);
  methods[1].selector = @selector(initWithJavaLangIterable:);
  methods[2].selector = @selector(compareWithId:withId:);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "comparators_", "LComGoogleCommonCollectImmutableList;", .constantValue.asLong = 0, 0x10, -1, -1, 11, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonCollectCompoundOrdering_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilComparator;LJavaUtilComparator;", "(Ljava/util/Comparator<-TT;>;Ljava/util/Comparator<-TT;>;)V", "LJavaLangIterable;", "(Ljava/lang/Iterable<+Ljava/util/Comparator<-TT;>;>;)V", "compare", "LNSObject;LNSObject;", "(TT;TT;)I", "equals", "LNSObject;", "hashCode", "toString", "Lcom/google/common/collect/ImmutableList<Ljava/util/Comparator<-TT;>;>;", "<T:Ljava/lang/Object;>Lcom/google/common/collect/Ordering<TT;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectCompoundOrdering = { "CompoundOrdering", "com.google.common.collect", ptrTable, methods, fields, 7, 0x10, 6, 2, -1, -1, -1, 12, -1 };
  return &_ComGoogleCommonCollectCompoundOrdering;
}

@end

void ComGoogleCommonCollectCompoundOrdering_initWithJavaUtilComparator_withJavaUtilComparator_(ComGoogleCommonCollectCompoundOrdering *self, id<JavaUtilComparator> primary, id<JavaUtilComparator> secondary) {
  ComGoogleCommonCollectOrdering_init(self);
  self->comparators_ = ComGoogleCommonCollectImmutableList_ofWithId_withId_(primary, secondary);
}

ComGoogleCommonCollectCompoundOrdering *new_ComGoogleCommonCollectCompoundOrdering_initWithJavaUtilComparator_withJavaUtilComparator_(id<JavaUtilComparator> primary, id<JavaUtilComparator> secondary) {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectCompoundOrdering, initWithJavaUtilComparator_withJavaUtilComparator_, primary, secondary)
}

ComGoogleCommonCollectCompoundOrdering *create_ComGoogleCommonCollectCompoundOrdering_initWithJavaUtilComparator_withJavaUtilComparator_(id<JavaUtilComparator> primary, id<JavaUtilComparator> secondary) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectCompoundOrdering, initWithJavaUtilComparator_withJavaUtilComparator_, primary, secondary)
}

void ComGoogleCommonCollectCompoundOrdering_initWithJavaLangIterable_(ComGoogleCommonCollectCompoundOrdering *self, id<JavaLangIterable> comparators) {
  ComGoogleCommonCollectOrdering_init(self);
  self->comparators_ = ComGoogleCommonCollectImmutableList_copyOfWithJavaLangIterable_(comparators);
}

ComGoogleCommonCollectCompoundOrdering *new_ComGoogleCommonCollectCompoundOrdering_initWithJavaLangIterable_(id<JavaLangIterable> comparators) {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectCompoundOrdering, initWithJavaLangIterable_, comparators)
}

ComGoogleCommonCollectCompoundOrdering *create_ComGoogleCommonCollectCompoundOrdering_initWithJavaLangIterable_(id<JavaLangIterable> comparators) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectCompoundOrdering, initWithJavaLangIterable_, comparators)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectCompoundOrdering)
