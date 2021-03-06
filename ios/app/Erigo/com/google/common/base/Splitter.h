//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/base/Splitter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonBaseSplitter")
#ifdef RESTRICT_ComGoogleCommonBaseSplitter
#define INCLUDE_ALL_ComGoogleCommonBaseSplitter 0
#else
#define INCLUDE_ALL_ComGoogleCommonBaseSplitter 1
#endif
#undef RESTRICT_ComGoogleCommonBaseSplitter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonBaseSplitter_) && (INCLUDE_ALL_ComGoogleCommonBaseSplitter || defined(INCLUDE_ComGoogleCommonBaseSplitter))
#define ComGoogleCommonBaseSplitter_

@class ComGoogleCommonBaseCharMatcher;
@class ComGoogleCommonBaseSplitter_MapSplitter;
@class JavaUtilRegexPattern;
@protocol JavaLangCharSequence;
@protocol JavaLangIterable;
@protocol JavaUtilList;

@interface ComGoogleCommonBaseSplitter : NSObject

#pragma mark Public

+ (ComGoogleCommonBaseSplitter *)fixedLengthWithInt:(jint)length;

- (ComGoogleCommonBaseSplitter *)limitWithInt:(jint)limit;

- (ComGoogleCommonBaseSplitter *)omitEmptyStrings;

+ (ComGoogleCommonBaseSplitter *)onWithChar:(jchar)separator;

+ (ComGoogleCommonBaseSplitter *)onWithComGoogleCommonBaseCharMatcher:(ComGoogleCommonBaseCharMatcher *)separatorMatcher;

+ (ComGoogleCommonBaseSplitter *)onWithJavaUtilRegexPattern:(JavaUtilRegexPattern *)separatorPattern;

+ (ComGoogleCommonBaseSplitter *)onWithNSString:(NSString *)separator;

+ (ComGoogleCommonBaseSplitter *)onPatternWithNSString:(NSString *)separatorPattern;

- (id<JavaLangIterable>)splitWithJavaLangCharSequence:(id<JavaLangCharSequence>)sequence;

- (id<JavaUtilList>)splitToListWithJavaLangCharSequence:(id<JavaLangCharSequence>)sequence;

- (ComGoogleCommonBaseSplitter *)trimResults;

- (ComGoogleCommonBaseSplitter *)trimResultsWithComGoogleCommonBaseCharMatcher:(ComGoogleCommonBaseCharMatcher *)trimmer;

- (ComGoogleCommonBaseSplitter_MapSplitter *)withKeyValueSeparatorWithChar:(jchar)separator;

- (ComGoogleCommonBaseSplitter_MapSplitter *)withKeyValueSeparatorWithComGoogleCommonBaseSplitter:(ComGoogleCommonBaseSplitter *)keyValueSplitter;

- (ComGoogleCommonBaseSplitter_MapSplitter *)withKeyValueSeparatorWithNSString:(NSString *)separator;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseSplitter)

FOUNDATION_EXPORT ComGoogleCommonBaseSplitter *ComGoogleCommonBaseSplitter_onWithChar_(jchar separator);

FOUNDATION_EXPORT ComGoogleCommonBaseSplitter *ComGoogleCommonBaseSplitter_onWithComGoogleCommonBaseCharMatcher_(ComGoogleCommonBaseCharMatcher *separatorMatcher);

FOUNDATION_EXPORT ComGoogleCommonBaseSplitter *ComGoogleCommonBaseSplitter_onWithNSString_(NSString *separator);

FOUNDATION_EXPORT ComGoogleCommonBaseSplitter *ComGoogleCommonBaseSplitter_onWithJavaUtilRegexPattern_(JavaUtilRegexPattern *separatorPattern);

FOUNDATION_EXPORT ComGoogleCommonBaseSplitter *ComGoogleCommonBaseSplitter_onPatternWithNSString_(NSString *separatorPattern);

FOUNDATION_EXPORT ComGoogleCommonBaseSplitter *ComGoogleCommonBaseSplitter_fixedLengthWithInt_(jint length);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseSplitter)

#endif

#if !defined (ComGoogleCommonBaseSplitter_MapSplitter_) && (INCLUDE_ALL_ComGoogleCommonBaseSplitter || defined(INCLUDE_ComGoogleCommonBaseSplitter_MapSplitter))
#define ComGoogleCommonBaseSplitter_MapSplitter_

@protocol JavaLangCharSequence;
@protocol JavaUtilMap;

@interface ComGoogleCommonBaseSplitter_MapSplitter : NSObject

#pragma mark Public

- (id<JavaUtilMap>)splitWithJavaLangCharSequence:(id<JavaLangCharSequence>)sequence;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseSplitter_MapSplitter)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseSplitter_MapSplitter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonBaseSplitter")
