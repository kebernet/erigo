//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/SortedIterable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectSortedIterable")
#ifdef RESTRICT_ComGoogleCommonCollectSortedIterable
#define INCLUDE_ALL_ComGoogleCommonCollectSortedIterable 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectSortedIterable 1
#endif
#undef RESTRICT_ComGoogleCommonCollectSortedIterable

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectSortedIterable_) && (INCLUDE_ALL_ComGoogleCommonCollectSortedIterable || defined(INCLUDE_ComGoogleCommonCollectSortedIterable))
#define ComGoogleCommonCollectSortedIterable_

#define RESTRICT_JavaLangIterable 1
#define INCLUDE_JavaLangIterable 1
#include "java/lang/Iterable.h"

@protocol JavaUtilComparator;
@protocol JavaUtilIterator;

@protocol ComGoogleCommonCollectSortedIterable < JavaLangIterable, JavaObject >

- (id<JavaUtilComparator>)comparator;

- (id<JavaUtilIterator>)iterator;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectSortedIterable)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectSortedIterable)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectSortedIterable")