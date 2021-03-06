//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ForwardingSortedSet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectForwardingSortedSet")
#ifdef RESTRICT_ComGoogleCommonCollectForwardingSortedSet
#define INCLUDE_ALL_ComGoogleCommonCollectForwardingSortedSet 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectForwardingSortedSet 1
#endif
#undef RESTRICT_ComGoogleCommonCollectForwardingSortedSet

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectForwardingSortedSet_) && (INCLUDE_ALL_ComGoogleCommonCollectForwardingSortedSet || defined(INCLUDE_ComGoogleCommonCollectForwardingSortedSet))
#define ComGoogleCommonCollectForwardingSortedSet_

#define RESTRICT_ComGoogleCommonCollectForwardingSet 1
#define INCLUDE_ComGoogleCommonCollectForwardingSet 1
#include "com/google/common/collect/ForwardingSet.h"

#define RESTRICT_JavaUtilSortedSet 1
#define INCLUDE_JavaUtilSortedSet 1
#include "java/util/SortedSet.h"

@protocol JavaUtilComparator;
@protocol JavaUtilSpliterator;

@interface ComGoogleCommonCollectForwardingSortedSet : ComGoogleCommonCollectForwardingSet < JavaUtilSortedSet >

#pragma mark Public

- (id<JavaUtilComparator>)comparator;

- (id)first;

- (id<JavaUtilSortedSet>)headSetWithId:(id)toElement;

- (id)last;

- (id<JavaUtilSortedSet>)subSetWithId:(id)fromElement
                               withId:(id)toElement;

- (id<JavaUtilSortedSet>)tailSetWithId:(id)fromElement;

#pragma mark Protected

- (instancetype)init;

- (id<JavaUtilSortedSet>)delegate;

- (jboolean)standardContainsWithId:(id)object;

- (jboolean)standardRemoveWithId:(id)object;

- (id<JavaUtilSortedSet>)standardSubSetWithId:(id)fromElement
                                       withId:(id)toElement;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectForwardingSortedSet)

FOUNDATION_EXPORT void ComGoogleCommonCollectForwardingSortedSet_init(ComGoogleCommonCollectForwardingSortedSet *self);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectForwardingSortedSet)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectForwardingSortedSet")
