//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/SortedSetMultimap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectSortedSetMultimap")
#ifdef RESTRICT_ComGoogleCommonCollectSortedSetMultimap
#define INCLUDE_ALL_ComGoogleCommonCollectSortedSetMultimap 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectSortedSetMultimap 1
#endif
#undef RESTRICT_ComGoogleCommonCollectSortedSetMultimap

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectSortedSetMultimap_) && (INCLUDE_ALL_ComGoogleCommonCollectSortedSetMultimap || defined(INCLUDE_ComGoogleCommonCollectSortedSetMultimap))
#define ComGoogleCommonCollectSortedSetMultimap_

#define RESTRICT_ComGoogleCommonCollectSetMultimap 1
#define INCLUDE_ComGoogleCommonCollectSetMultimap 1
#include "com/google/common/collect/SetMultimap.h"

@protocol JavaLangIterable;
@protocol JavaUtilComparator;
@protocol JavaUtilMap;
@protocol JavaUtilSortedSet;

@protocol ComGoogleCommonCollectSortedSetMultimap < ComGoogleCommonCollectSetMultimap, JavaObject >

- (id<JavaUtilSortedSet>)getWithId:(id)key;

- (id<JavaUtilSortedSet>)removeAllWithId:(id)key;

- (id<JavaUtilSortedSet>)replaceValuesWithId:(id)key
                        withJavaLangIterable:(id<JavaLangIterable>)values;

- (id<JavaUtilMap>)asMap;

- (id<JavaUtilComparator>)valueComparator;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectSortedSetMultimap)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectSortedSetMultimap)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectSortedSetMultimap")
