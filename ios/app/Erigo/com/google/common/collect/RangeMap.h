//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/RangeMap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectRangeMap")
#ifdef RESTRICT_ComGoogleCommonCollectRangeMap
#define INCLUDE_ALL_ComGoogleCommonCollectRangeMap 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectRangeMap 1
#endif
#undef RESTRICT_ComGoogleCommonCollectRangeMap

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectRangeMap_) && (INCLUDE_ALL_ComGoogleCommonCollectRangeMap || defined(INCLUDE_ComGoogleCommonCollectRangeMap))
#define ComGoogleCommonCollectRangeMap_

@class ComGoogleCommonCollectRange;
@protocol JavaLangComparable;
@protocol JavaUtilMap;
@protocol JavaUtilMap_Entry;

@protocol ComGoogleCommonCollectRangeMap < JavaObject >

- (id)getWithJavaLangComparable:(id<JavaLangComparable>)key;

- (id<JavaUtilMap_Entry>)getEntryWithJavaLangComparable:(id<JavaLangComparable>)key;

- (ComGoogleCommonCollectRange *)span;

- (void)putWithComGoogleCommonCollectRange:(ComGoogleCommonCollectRange *)range
                                    withId:(id)value;

- (void)putCoalescingWithComGoogleCommonCollectRange:(ComGoogleCommonCollectRange *)range
                                              withId:(id)value;

- (void)putAllWithComGoogleCommonCollectRangeMap:(id<ComGoogleCommonCollectRangeMap>)rangeMap;

- (void)clear;

- (void)removeWithComGoogleCommonCollectRange:(ComGoogleCommonCollectRange *)range;

- (id<JavaUtilMap>)asMapOfRanges;

- (id<JavaUtilMap>)asDescendingMapOfRanges;

- (id<ComGoogleCommonCollectRangeMap>)subRangeMapWithComGoogleCommonCollectRange:(ComGoogleCommonCollectRange *)range;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectRangeMap)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectRangeMap)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectRangeMap")
