//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/base/Optional.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonBaseOptional")
#ifdef RESTRICT_ComGoogleCommonBaseOptional
#define INCLUDE_ALL_ComGoogleCommonBaseOptional 0
#else
#define INCLUDE_ALL_ComGoogleCommonBaseOptional 1
#endif
#undef RESTRICT_ComGoogleCommonBaseOptional

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonBaseOptional_) && (INCLUDE_ALL_ComGoogleCommonBaseOptional || defined(INCLUDE_ComGoogleCommonBaseOptional))
#define ComGoogleCommonBaseOptional_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class JavaUtilOptional;
@protocol ComGoogleCommonBaseFunction;
@protocol ComGoogleCommonBaseSupplier;
@protocol JavaLangIterable;
@protocol JavaUtilSet;

@interface ComGoogleCommonBaseOptional : NSObject < JavaIoSerializable >

#pragma mark Public

+ (ComGoogleCommonBaseOptional *)absent;

- (id<JavaUtilSet>)asSet;

- (jboolean)isEqual:(id)object;

+ (ComGoogleCommonBaseOptional *)fromJavaUtilWithJavaUtilOptional:(JavaUtilOptional *)javaUtilOptional;

+ (ComGoogleCommonBaseOptional *)fromNullableWithId:(id)nullableReference;

- (id)get;

- (NSUInteger)hash;

- (jboolean)isPresent;

+ (ComGoogleCommonBaseOptional *)ofWithId:(id)reference;

- (ComGoogleCommonBaseOptional *)or__WithComGoogleCommonBaseOptional:(ComGoogleCommonBaseOptional *)secondChoice;

- (id)or__WithComGoogleCommonBaseSupplier:(id<ComGoogleCommonBaseSupplier>)supplier;

- (id)or__WithId:(id)defaultValue;

- (id)orNull;

+ (id<JavaLangIterable>)presentInstancesWithJavaLangIterable:(id<JavaLangIterable>)optionals;

- (JavaUtilOptional *)toJavaUtil;

+ (JavaUtilOptional *)toJavaUtilWithComGoogleCommonBaseOptional:(ComGoogleCommonBaseOptional *)googleOptional;

- (NSString *)description;

- (ComGoogleCommonBaseOptional *)transformWithComGoogleCommonBaseFunction:(id<ComGoogleCommonBaseFunction>)function;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseOptional)

FOUNDATION_EXPORT ComGoogleCommonBaseOptional *ComGoogleCommonBaseOptional_absent();

FOUNDATION_EXPORT ComGoogleCommonBaseOptional *ComGoogleCommonBaseOptional_ofWithId_(id reference);

FOUNDATION_EXPORT ComGoogleCommonBaseOptional *ComGoogleCommonBaseOptional_fromNullableWithId_(id nullableReference);

FOUNDATION_EXPORT ComGoogleCommonBaseOptional *ComGoogleCommonBaseOptional_fromJavaUtilWithJavaUtilOptional_(JavaUtilOptional *javaUtilOptional);

FOUNDATION_EXPORT JavaUtilOptional *ComGoogleCommonBaseOptional_toJavaUtilWithComGoogleCommonBaseOptional_(ComGoogleCommonBaseOptional *googleOptional);

FOUNDATION_EXPORT void ComGoogleCommonBaseOptional_init(ComGoogleCommonBaseOptional *self);

FOUNDATION_EXPORT id<JavaLangIterable> ComGoogleCommonBaseOptional_presentInstancesWithJavaLangIterable_(id<JavaLangIterable> optionals);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseOptional)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonBaseOptional")
