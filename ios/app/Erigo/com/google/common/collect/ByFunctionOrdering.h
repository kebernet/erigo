//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ByFunctionOrdering.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectByFunctionOrdering")
#ifdef RESTRICT_ComGoogleCommonCollectByFunctionOrdering
#define INCLUDE_ALL_ComGoogleCommonCollectByFunctionOrdering 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectByFunctionOrdering 1
#endif
#undef RESTRICT_ComGoogleCommonCollectByFunctionOrdering

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectByFunctionOrdering_) && (INCLUDE_ALL_ComGoogleCommonCollectByFunctionOrdering || defined(INCLUDE_ComGoogleCommonCollectByFunctionOrdering))
#define ComGoogleCommonCollectByFunctionOrdering_

#define RESTRICT_ComGoogleCommonCollectOrdering 1
#define INCLUDE_ComGoogleCommonCollectOrdering 1
#include "com/google/common/collect/Ordering.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@protocol ComGoogleCommonBaseFunction;

@interface ComGoogleCommonCollectByFunctionOrdering : ComGoogleCommonCollectOrdering < JavaIoSerializable > {
 @public
  id<ComGoogleCommonBaseFunction> function_;
  ComGoogleCommonCollectOrdering *ordering_;
}

#pragma mark Public

- (jint)compareWithId:(id)left
               withId:(id)right;

- (jboolean)isEqual:(id)object;

- (NSUInteger)hash;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithComGoogleCommonBaseFunction:(id<ComGoogleCommonBaseFunction>)function
                 withComGoogleCommonCollectOrdering:(ComGoogleCommonCollectOrdering *)ordering;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectByFunctionOrdering)

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectByFunctionOrdering, function_, id<ComGoogleCommonBaseFunction>)
J2OBJC_FIELD_SETTER(ComGoogleCommonCollectByFunctionOrdering, ordering_, ComGoogleCommonCollectOrdering *)

FOUNDATION_EXPORT void ComGoogleCommonCollectByFunctionOrdering_initWithComGoogleCommonBaseFunction_withComGoogleCommonCollectOrdering_(ComGoogleCommonCollectByFunctionOrdering *self, id<ComGoogleCommonBaseFunction> function, ComGoogleCommonCollectOrdering *ordering);

FOUNDATION_EXPORT ComGoogleCommonCollectByFunctionOrdering *new_ComGoogleCommonCollectByFunctionOrdering_initWithComGoogleCommonBaseFunction_withComGoogleCommonCollectOrdering_(id<ComGoogleCommonBaseFunction> function, ComGoogleCommonCollectOrdering *ordering) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonCollectByFunctionOrdering *create_ComGoogleCommonCollectByFunctionOrdering_initWithComGoogleCommonBaseFunction_withComGoogleCommonCollectOrdering_(id<ComGoogleCommonBaseFunction> function, ComGoogleCommonCollectOrdering *ordering);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectByFunctionOrdering)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectByFunctionOrdering")
