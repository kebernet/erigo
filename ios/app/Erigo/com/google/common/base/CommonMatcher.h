//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/base/CommonMatcher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonBaseCommonMatcher")
#ifdef RESTRICT_ComGoogleCommonBaseCommonMatcher
#define INCLUDE_ALL_ComGoogleCommonBaseCommonMatcher 0
#else
#define INCLUDE_ALL_ComGoogleCommonBaseCommonMatcher 1
#endif
#undef RESTRICT_ComGoogleCommonBaseCommonMatcher

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonBaseCommonMatcher_) && (INCLUDE_ALL_ComGoogleCommonBaseCommonMatcher || defined(INCLUDE_ComGoogleCommonBaseCommonMatcher))
#define ComGoogleCommonBaseCommonMatcher_

@interface ComGoogleCommonBaseCommonMatcher : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (jint)end;

- (jboolean)find;

- (jboolean)findWithInt:(jint)index;

- (jboolean)matches;

- (NSString *)replaceAllWithNSString:(NSString *)replacement;

- (jint)start;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseCommonMatcher)

FOUNDATION_EXPORT void ComGoogleCommonBaseCommonMatcher_init(ComGoogleCommonBaseCommonMatcher *self);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseCommonMatcher)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonBaseCommonMatcher")
