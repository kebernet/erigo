//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/FilteredSetMultimap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectFilteredSetMultimap")
#ifdef RESTRICT_ComGoogleCommonCollectFilteredSetMultimap
#define INCLUDE_ALL_ComGoogleCommonCollectFilteredSetMultimap 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectFilteredSetMultimap 1
#endif
#undef RESTRICT_ComGoogleCommonCollectFilteredSetMultimap

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectFilteredSetMultimap_) && (INCLUDE_ALL_ComGoogleCommonCollectFilteredSetMultimap || defined(INCLUDE_ComGoogleCommonCollectFilteredSetMultimap))
#define ComGoogleCommonCollectFilteredSetMultimap_

#define RESTRICT_ComGoogleCommonCollectFilteredMultimap 1
#define INCLUDE_ComGoogleCommonCollectFilteredMultimap 1
#include "com/google/common/collect/FilteredMultimap.h"

#define RESTRICT_ComGoogleCommonCollectSetMultimap 1
#define INCLUDE_ComGoogleCommonCollectSetMultimap 1
#include "com/google/common/collect/SetMultimap.h"

@protocol JavaLangIterable;
@protocol JavaUtilSet;

@protocol ComGoogleCommonCollectFilteredSetMultimap < ComGoogleCommonCollectFilteredMultimap, ComGoogleCommonCollectSetMultimap, JavaObject >

- (id<ComGoogleCommonCollectSetMultimap>)unfiltered;

- (id<JavaUtilSet>)getWithId:(id)arg0;

- (id<JavaUtilSet>)entries;

- (id<JavaUtilSet>)replaceValuesWithId:(id)arg0
                  withJavaLangIterable:(id<JavaLangIterable>)arg1;

- (id<JavaUtilSet>)removeAllWithId:(id)arg0;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectFilteredSetMultimap)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectFilteredSetMultimap)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectFilteredSetMultimap")
