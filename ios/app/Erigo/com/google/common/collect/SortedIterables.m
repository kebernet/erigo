//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/SortedIterables.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/collect/Ordering.h"
#include "com/google/common/collect/SortedIterable.h"
#include "com/google/common/collect/SortedIterables.h"
#include "java/lang/Iterable.h"
#include "java/util/Comparator.h"
#include "java/util/SortedSet.h"

@interface ComGoogleCommonCollectSortedIterables ()

- (instancetype)init;

@end

__attribute__((unused)) static void ComGoogleCommonCollectSortedIterables_init(ComGoogleCommonCollectSortedIterables *self);

__attribute__((unused)) static ComGoogleCommonCollectSortedIterables *new_ComGoogleCommonCollectSortedIterables_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectSortedIterables *create_ComGoogleCommonCollectSortedIterables_init();

@implementation ComGoogleCommonCollectSortedIterables

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCollectSortedIterables_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jboolean)hasSameComparatorWithJavaUtilComparator:(id<JavaUtilComparator>)comparator
                               withJavaLangIterable:(id<JavaLangIterable>)elements {
  return ComGoogleCommonCollectSortedIterables_hasSameComparatorWithJavaUtilComparator_withJavaLangIterable_(comparator, elements);
}

+ (id<JavaUtilComparator>)comparatorWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)sortedSet {
  return ComGoogleCommonCollectSortedIterables_comparatorWithJavaUtilSortedSet_(sortedSet);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "LJavaUtilComparator;", 0x9, 3, 4, -1, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(hasSameComparatorWithJavaUtilComparator:withJavaLangIterable:);
  methods[2].selector = @selector(comparatorWithJavaUtilSortedSet:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "hasSameComparator", "LJavaUtilComparator;LJavaLangIterable;", "(Ljava/util/Comparator<*>;Ljava/lang/Iterable<*>;)Z", "comparator", "LJavaUtilSortedSet;", "<E:Ljava/lang/Object;>(Ljava/util/SortedSet<TE;>;)Ljava/util/Comparator<-TE;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectSortedIterables = { "SortedIterables", "com.google.common.collect", ptrTable, methods, NULL, 7, 0x10, 3, 0, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonCollectSortedIterables;
}

@end

void ComGoogleCommonCollectSortedIterables_init(ComGoogleCommonCollectSortedIterables *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectSortedIterables *new_ComGoogleCommonCollectSortedIterables_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectSortedIterables, init)
}

ComGoogleCommonCollectSortedIterables *create_ComGoogleCommonCollectSortedIterables_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectSortedIterables, init)
}

jboolean ComGoogleCommonCollectSortedIterables_hasSameComparatorWithJavaUtilComparator_withJavaLangIterable_(id<JavaUtilComparator> comparator, id<JavaLangIterable> elements) {
  ComGoogleCommonCollectSortedIterables_initialize();
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(comparator);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(elements);
  id<JavaUtilComparator> comparator2;
  if ([JavaUtilSortedSet_class_() isInstance:elements]) {
    comparator2 = ComGoogleCommonCollectSortedIterables_comparatorWithJavaUtilSortedSet_((id<JavaUtilSortedSet>) cast_check(elements, JavaUtilSortedSet_class_()));
  }
  else if ([ComGoogleCommonCollectSortedIterable_class_() isInstance:elements]) {
    comparator2 = [((id<ComGoogleCommonCollectSortedIterable>) nil_chk(((id<ComGoogleCommonCollectSortedIterable>) cast_check(elements, ComGoogleCommonCollectSortedIterable_class_())))) comparator];
  }
  else {
    return false;
  }
  return [((id<JavaUtilComparator>) nil_chk(comparator)) isEqual:comparator2];
}

id<JavaUtilComparator> ComGoogleCommonCollectSortedIterables_comparatorWithJavaUtilSortedSet_(id<JavaUtilSortedSet> sortedSet) {
  ComGoogleCommonCollectSortedIterables_initialize();
  id<JavaUtilComparator> result = [((id<JavaUtilSortedSet>) nil_chk(sortedSet)) comparator];
  if (result == nil) {
    result = ComGoogleCommonCollectOrdering_natural();
  }
  return result;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectSortedIterables)