//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/base/CommonPattern.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonBaseCommonPattern")
#ifdef RESTRICT_ComGoogleCommonBaseCommonPattern
#define INCLUDE_ALL_ComGoogleCommonBaseCommonPattern 0
#else
#define INCLUDE_ALL_ComGoogleCommonBaseCommonPattern 1
#endif
#undef RESTRICT_ComGoogleCommonBaseCommonPattern

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonBaseCommonPattern_) && (INCLUDE_ALL_ComGoogleCommonBaseCommonPattern || defined(INCLUDE_ComGoogleCommonBaseCommonPattern))
#define ComGoogleCommonBaseCommonPattern_

@class ComGoogleCommonBaseCommonMatcher;
@protocol JavaLangCharSequence;

@interface ComGoogleCommonBaseCommonPattern : NSObject

#pragma mark Public

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

- (jint)flags;

- (ComGoogleCommonBaseCommonMatcher *)matcherWithJavaLangCharSequence:(id<JavaLangCharSequence>)t;

- (NSString *)pattern;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseCommonPattern)

FOUNDATION_EXPORT void ComGoogleCommonBaseCommonPattern_init(ComGoogleCommonBaseCommonPattern *self);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseCommonPattern)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonBaseCommonPattern")
