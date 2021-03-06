//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ImmutableSortedMultiset.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectImmutableSortedMultiset")
#ifdef RESTRICT_ComGoogleCommonCollectImmutableSortedMultiset
#define INCLUDE_ALL_ComGoogleCommonCollectImmutableSortedMultiset 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectImmutableSortedMultiset 1
#endif
#undef RESTRICT_ComGoogleCommonCollectImmutableSortedMultiset

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectImmutableSortedMultiset_) && (INCLUDE_ALL_ComGoogleCommonCollectImmutableSortedMultiset || defined(INCLUDE_ComGoogleCommonCollectImmutableSortedMultiset))
#define ComGoogleCommonCollectImmutableSortedMultiset_

#define RESTRICT_ComGoogleCommonCollectImmutableSortedMultisetFauxverideShim 1
#define INCLUDE_ComGoogleCommonCollectImmutableSortedMultisetFauxverideShim 1
#include "com/google/common/collect/ImmutableSortedMultisetFauxverideShim.h"

#define RESTRICT_ComGoogleCommonCollectSortedMultiset 1
#define INCLUDE_ComGoogleCommonCollectSortedMultiset 1
#include "com/google/common/collect/SortedMultiset.h"

@class ComGoogleCommonCollectBoundType;
@class ComGoogleCommonCollectImmutableSet;
@class ComGoogleCommonCollectImmutableSortedMultiset_Builder;
@class ComGoogleCommonCollectImmutableSortedSet;
@class ComGoogleCommonCollectUnmodifiableIterator;
@class IOSObjectArray;
@protocol ComGoogleCommonCollectMultiset_Entry;
@protocol JavaLangComparable;
@protocol JavaLangIterable;
@protocol JavaUtilComparator;
@protocol JavaUtilFunctionFunction;
@protocol JavaUtilFunctionToIntFunction;
@protocol JavaUtilIterator;
@protocol JavaUtilStreamCollector;

@interface ComGoogleCommonCollectImmutableSortedMultiset : ComGoogleCommonCollectImmutableSortedMultisetFauxverideShim < ComGoogleCommonCollectSortedMultiset > {
 @public
  volatile_id descendingMultiset_;
}

#pragma mark Public

- (id<JavaUtilComparator>)comparator;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)copyOfWithJavaUtilComparator:(id<JavaUtilComparator>)comparator
                                                           withJavaLangIterable:(id<JavaLangIterable>)elements OBJC_METHOD_FAMILY_NONE;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)copyOfWithJavaUtilComparator:(id<JavaUtilComparator>)comparator
                                                           withJavaUtilIterator:(id<JavaUtilIterator>)elements OBJC_METHOD_FAMILY_NONE;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)copyOfWithJavaLangComparableArray:(IOSObjectArray *)elements OBJC_METHOD_FAMILY_NONE;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)copyOfWithJavaLangIterable:(id<JavaLangIterable>)elements OBJC_METHOD_FAMILY_NONE;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)copyOfWithJavaUtilIterator:(id<JavaUtilIterator>)elements OBJC_METHOD_FAMILY_NONE;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)copyOfSortedWithComGoogleCommonCollectSortedMultiset:(id<ComGoogleCommonCollectSortedMultiset>)sortedMultiset OBJC_METHOD_FAMILY_NONE;

- (ComGoogleCommonCollectImmutableSortedMultiset *)descendingMultiset;

- (ComGoogleCommonCollectImmutableSortedSet *)elementSet;

- (ComGoogleCommonCollectImmutableSet *)entrySet;

- (ComGoogleCommonCollectImmutableSortedMultiset *)headMultisetWithId:(id)upperBound
                                  withComGoogleCommonCollectBoundType:(ComGoogleCommonCollectBoundType *)boundType;

- (ComGoogleCommonCollectUnmodifiableIterator *)iterator;

+ (ComGoogleCommonCollectImmutableSortedMultiset_Builder *)naturalOrder;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)of;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)ofWithJavaLangComparable:(id<JavaLangComparable>)element;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)ofWithJavaLangComparable:(id<JavaLangComparable>)e1
                                                     withJavaLangComparable:(id<JavaLangComparable>)e2;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)ofWithJavaLangComparable:(id<JavaLangComparable>)e1
                                                     withJavaLangComparable:(id<JavaLangComparable>)e2
                                                     withJavaLangComparable:(id<JavaLangComparable>)e3;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)ofWithJavaLangComparable:(id<JavaLangComparable>)e1
                                                     withJavaLangComparable:(id<JavaLangComparable>)e2
                                                     withJavaLangComparable:(id<JavaLangComparable>)e3
                                                     withJavaLangComparable:(id<JavaLangComparable>)e4;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)ofWithJavaLangComparable:(id<JavaLangComparable>)e1
                                                     withJavaLangComparable:(id<JavaLangComparable>)e2
                                                     withJavaLangComparable:(id<JavaLangComparable>)e3
                                                     withJavaLangComparable:(id<JavaLangComparable>)e4
                                                     withJavaLangComparable:(id<JavaLangComparable>)e5;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)ofWithJavaLangComparable:(id<JavaLangComparable>)e1
                                                     withJavaLangComparable:(id<JavaLangComparable>)e2
                                                     withJavaLangComparable:(id<JavaLangComparable>)e3
                                                     withJavaLangComparable:(id<JavaLangComparable>)e4
                                                     withJavaLangComparable:(id<JavaLangComparable>)e5
                                                     withJavaLangComparable:(id<JavaLangComparable>)e6
                                                withJavaLangComparableArray:(IOSObjectArray *)remaining;

+ (ComGoogleCommonCollectImmutableSortedMultiset_Builder *)orderedByWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;

- (id<ComGoogleCommonCollectMultiset_Entry>)pollFirstEntry;

- (id<ComGoogleCommonCollectMultiset_Entry>)pollLastEntry;

+ (ComGoogleCommonCollectImmutableSortedMultiset_Builder *)reverseOrder;

- (ComGoogleCommonCollectImmutableSortedMultiset *)subMultisetWithId:(id)lowerBound
                                 withComGoogleCommonCollectBoundType:(ComGoogleCommonCollectBoundType *)lowerBoundType
                                                              withId:(id)upperBound
                                 withComGoogleCommonCollectBoundType:(ComGoogleCommonCollectBoundType *)upperBoundType;

- (ComGoogleCommonCollectImmutableSortedMultiset *)tailMultisetWithId:(id)lowerBound
                                  withComGoogleCommonCollectBoundType:(ComGoogleCommonCollectBoundType *)boundType;

+ (id<JavaUtilStreamCollector>)toImmutableSortedMultisetWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;

+ (id<JavaUtilStreamCollector>)toImmutableSortedMultisetWithJavaUtilComparator:(id<JavaUtilComparator>)comparator
                                                  withJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)elementFunction
                                             withJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)countFunction;

#pragma mark Package-Private

- (instancetype)init;

+ (ComGoogleCommonCollectImmutableSortedMultiset *)emptyMultisetWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;

- (id)writeReplace;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectImmutableSortedMultiset)

J2OBJC_VOLATILE_FIELD_SETTER(ComGoogleCommonCollectImmutableSortedMultiset, descendingMultiset_, ComGoogleCommonCollectImmutableSortedMultiset *)

FOUNDATION_EXPORT id<JavaUtilStreamCollector> ComGoogleCommonCollectImmutableSortedMultiset_toImmutableSortedMultisetWithJavaUtilComparator_(id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT id<JavaUtilStreamCollector> ComGoogleCommonCollectImmutableSortedMultiset_toImmutableSortedMultisetWithJavaUtilComparator_withJavaUtilFunctionFunction_withJavaUtilFunctionToIntFunction_(id<JavaUtilComparator> comparator, id<JavaUtilFunctionFunction> elementFunction, id<JavaUtilFunctionToIntFunction> countFunction);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_of();

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_ofWithJavaLangComparable_(id<JavaLangComparable> element);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_ofWithJavaLangComparable_withJavaLangComparable_(id<JavaLangComparable> e1, id<JavaLangComparable> e2);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_ofWithJavaLangComparable_withJavaLangComparable_withJavaLangComparable_(id<JavaLangComparable> e1, id<JavaLangComparable> e2, id<JavaLangComparable> e3);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_ofWithJavaLangComparable_withJavaLangComparable_withJavaLangComparable_withJavaLangComparable_(id<JavaLangComparable> e1, id<JavaLangComparable> e2, id<JavaLangComparable> e3, id<JavaLangComparable> e4);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_ofWithJavaLangComparable_withJavaLangComparable_withJavaLangComparable_withJavaLangComparable_withJavaLangComparable_(id<JavaLangComparable> e1, id<JavaLangComparable> e2, id<JavaLangComparable> e3, id<JavaLangComparable> e4, id<JavaLangComparable> e5);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_ofWithJavaLangComparable_withJavaLangComparable_withJavaLangComparable_withJavaLangComparable_withJavaLangComparable_withJavaLangComparable_withJavaLangComparableArray_(id<JavaLangComparable> e1, id<JavaLangComparable> e2, id<JavaLangComparable> e3, id<JavaLangComparable> e4, id<JavaLangComparable> e5, id<JavaLangComparable> e6, IOSObjectArray *remaining);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_copyOfWithJavaLangComparableArray_(IOSObjectArray *elements);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_copyOfWithJavaLangIterable_(id<JavaLangIterable> elements);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_copyOfWithJavaUtilIterator_(id<JavaUtilIterator> elements);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_copyOfWithJavaUtilComparator_withJavaUtilIterator_(id<JavaUtilComparator> comparator, id<JavaUtilIterator> elements);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_copyOfWithJavaUtilComparator_withJavaLangIterable_(id<JavaUtilComparator> comparator, id<JavaLangIterable> elements);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_copyOfSortedWithComGoogleCommonCollectSortedMultiset_(id<ComGoogleCommonCollectSortedMultiset> sortedMultiset);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset *ComGoogleCommonCollectImmutableSortedMultiset_emptyMultisetWithJavaUtilComparator_(id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT void ComGoogleCommonCollectImmutableSortedMultiset_init(ComGoogleCommonCollectImmutableSortedMultiset *self);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset_Builder *ComGoogleCommonCollectImmutableSortedMultiset_orderedByWithJavaUtilComparator_(id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset_Builder *ComGoogleCommonCollectImmutableSortedMultiset_reverseOrder();

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset_Builder *ComGoogleCommonCollectImmutableSortedMultiset_naturalOrder();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectImmutableSortedMultiset)

#endif

#if !defined (ComGoogleCommonCollectImmutableSortedMultiset_Builder_) && (INCLUDE_ALL_ComGoogleCommonCollectImmutableSortedMultiset || defined(INCLUDE_ComGoogleCommonCollectImmutableSortedMultiset_Builder))
#define ComGoogleCommonCollectImmutableSortedMultiset_Builder_

#define RESTRICT_ComGoogleCommonCollectImmutableMultiset 1
#define INCLUDE_ComGoogleCommonCollectImmutableMultiset_Builder 1
#include "com/google/common/collect/ImmutableMultiset.h"

@class ComGoogleCommonCollectImmutableSortedMultiset;
@class IOSObjectArray;
@protocol JavaLangIterable;
@protocol JavaUtilComparator;
@protocol JavaUtilIterator;

@interface ComGoogleCommonCollectImmutableSortedMultiset_Builder : ComGoogleCommonCollectImmutableMultiset_Builder

#pragma mark Public

- (instancetype)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;

- (ComGoogleCommonCollectImmutableSortedMultiset_Builder *)addWithId:(id)element;

- (ComGoogleCommonCollectImmutableSortedMultiset_Builder *)addWithNSObjectArray:(IOSObjectArray *)elements;

- (ComGoogleCommonCollectImmutableSortedMultiset_Builder *)addAllWithJavaLangIterable:(id<JavaLangIterable>)elements;

- (ComGoogleCommonCollectImmutableSortedMultiset_Builder *)addAllWithJavaUtilIterator:(id<JavaUtilIterator>)elements;

- (ComGoogleCommonCollectImmutableSortedMultiset_Builder *)addCopiesWithId:(id)element
                                                                   withInt:(jint)occurrences;

- (ComGoogleCommonCollectImmutableSortedMultiset *)build;

- (ComGoogleCommonCollectImmutableSortedMultiset_Builder *)setCountWithId:(id)element
                                                                  withInt:(jint)count;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectImmutableSortedMultiset_Builder)

FOUNDATION_EXPORT void ComGoogleCommonCollectImmutableSortedMultiset_Builder_initWithJavaUtilComparator_(ComGoogleCommonCollectImmutableSortedMultiset_Builder *self, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset_Builder *new_ComGoogleCommonCollectImmutableSortedMultiset_Builder_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableSortedMultiset_Builder *create_ComGoogleCommonCollectImmutableSortedMultiset_Builder_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectImmutableSortedMultiset_Builder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectImmutableSortedMultiset")
