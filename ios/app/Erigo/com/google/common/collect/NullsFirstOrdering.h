//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/NullsFirstOrdering.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectNullsFirstOrdering")
#ifdef RESTRICT_ComGoogleCommonCollectNullsFirstOrdering
#define INCLUDE_ALL_ComGoogleCommonCollectNullsFirstOrdering 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectNullsFirstOrdering 1
#endif
#undef RESTRICT_ComGoogleCommonCollectNullsFirstOrdering

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectNullsFirstOrdering_) && (INCLUDE_ALL_ComGoogleCommonCollectNullsFirstOrdering || defined(INCLUDE_ComGoogleCommonCollectNullsFirstOrdering))
#define ComGoogleCommonCollectNullsFirstOrdering_

#define RESTRICT_ComGoogleCommonCollectOrdering 1
#define INCLUDE_ComGoogleCommonCollectOrdering 1
#include "com/google/common/collect/Ordering.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@interface ComGoogleCommonCollectNullsFirstOrdering : ComGoogleCommonCollectOrdering < JavaIoSerializable > {
 @public
  ComGoogleCommonCollectOrdering *ordering_;
}

#pragma mark Public

- (jint)compareWithId:(id)left
               withId:(id)right;

- (jboolean)isEqual:(id)object;

- (NSUInteger)hash;

- (ComGoogleCommonCollectOrdering *)nullsFirst;

- (ComGoogleCommonCollectOrdering *)nullsLast;

- (ComGoogleCommonCollectOrdering *)reverse;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithComGoogleCommonCollectOrdering:(ComGoogleCommonCollectOrdering *)ordering;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectNullsFirstOrdering)

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectNullsFirstOrdering, ordering_, ComGoogleCommonCollectOrdering *)

FOUNDATION_EXPORT void ComGoogleCommonCollectNullsFirstOrdering_initWithComGoogleCommonCollectOrdering_(ComGoogleCommonCollectNullsFirstOrdering *self, ComGoogleCommonCollectOrdering *ordering);

FOUNDATION_EXPORT ComGoogleCommonCollectNullsFirstOrdering *new_ComGoogleCommonCollectNullsFirstOrdering_initWithComGoogleCommonCollectOrdering_(ComGoogleCommonCollectOrdering *ordering) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonCollectNullsFirstOrdering *create_ComGoogleCommonCollectNullsFirstOrdering_initWithComGoogleCommonCollectOrdering_(ComGoogleCommonCollectOrdering *ordering);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectNullsFirstOrdering)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectNullsFirstOrdering")
