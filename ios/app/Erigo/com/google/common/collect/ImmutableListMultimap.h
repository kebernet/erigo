//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ImmutableListMultimap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectImmutableListMultimap")
#ifdef RESTRICT_ComGoogleCommonCollectImmutableListMultimap
#define INCLUDE_ALL_ComGoogleCommonCollectImmutableListMultimap 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectImmutableListMultimap 1
#endif
#undef RESTRICT_ComGoogleCommonCollectImmutableListMultimap

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectImmutableListMultimap_) && (INCLUDE_ALL_ComGoogleCommonCollectImmutableListMultimap || defined(INCLUDE_ComGoogleCommonCollectImmutableListMultimap))
#define ComGoogleCommonCollectImmutableListMultimap_

#define RESTRICT_ComGoogleCommonCollectImmutableMultimap 1
#define INCLUDE_ComGoogleCommonCollectImmutableMultimap 1
#include "com/google/common/collect/ImmutableMultimap.h"

#define RESTRICT_ComGoogleCommonCollectListMultimap 1
#define INCLUDE_ComGoogleCommonCollectListMultimap 1
#include "com/google/common/collect/ListMultimap.h"

@class ComGoogleCommonCollectImmutableCollection;
@class ComGoogleCommonCollectImmutableList;
@class ComGoogleCommonCollectImmutableListMultimap_Builder;
@class ComGoogleCommonCollectImmutableMap;
@class ComGoogleCommonCollectImmutableMultiset;
@class ComGoogleCommonCollectImmutableSet;
@protocol ComGoogleCommonCollectMultimap;
@protocol JavaLangIterable;
@protocol JavaUtilFunctionFunction;
@protocol JavaUtilStreamCollector;

@interface ComGoogleCommonCollectImmutableListMultimap : ComGoogleCommonCollectImmutableMultimap < ComGoogleCommonCollectListMultimap >

#pragma mark Public

- (ComGoogleCommonCollectImmutableMap *)asMap;

+ (ComGoogleCommonCollectImmutableListMultimap_Builder *)builder;

+ (ComGoogleCommonCollectImmutableListMultimap *)copyOfWithJavaLangIterable:(id<JavaLangIterable>)entries OBJC_METHOD_FAMILY_NONE;

+ (ComGoogleCommonCollectImmutableListMultimap *)copyOfWithComGoogleCommonCollectMultimap:(id<ComGoogleCommonCollectMultimap>)multimap OBJC_METHOD_FAMILY_NONE;

- (ComGoogleCommonCollectImmutableCollection *)entries;

+ (id<JavaUtilStreamCollector>)flatteningToImmutableListMultimapWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)keyFunction
                                                                withJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)valuesFunction;

- (ComGoogleCommonCollectImmutableList *)getWithId:(id)key;

- (ComGoogleCommonCollectImmutableListMultimap *)inverse;

- (ComGoogleCommonCollectImmutableMultiset *)keys;

- (ComGoogleCommonCollectImmutableSet *)keySet;

+ (ComGoogleCommonCollectImmutableListMultimap *)of;

+ (ComGoogleCommonCollectImmutableListMultimap *)ofWithId:(id)k1
                                                   withId:(id)v1;

+ (ComGoogleCommonCollectImmutableListMultimap *)ofWithId:(id)k1
                                                   withId:(id)v1
                                                   withId:(id)k2
                                                   withId:(id)v2;

+ (ComGoogleCommonCollectImmutableListMultimap *)ofWithId:(id)k1
                                                   withId:(id)v1
                                                   withId:(id)k2
                                                   withId:(id)v2
                                                   withId:(id)k3
                                                   withId:(id)v3;

+ (ComGoogleCommonCollectImmutableListMultimap *)ofWithId:(id)k1
                                                   withId:(id)v1
                                                   withId:(id)k2
                                                   withId:(id)v2
                                                   withId:(id)k3
                                                   withId:(id)v3
                                                   withId:(id)k4
                                                   withId:(id)v4;

+ (ComGoogleCommonCollectImmutableListMultimap *)ofWithId:(id)k1
                                                   withId:(id)v1
                                                   withId:(id)k2
                                                   withId:(id)v2
                                                   withId:(id)k3
                                                   withId:(id)v3
                                                   withId:(id)k4
                                                   withId:(id)v4
                                                   withId:(id)k5
                                                   withId:(id)v5;

- (ComGoogleCommonCollectImmutableList *)removeAllWithId:(id)key;

- (ComGoogleCommonCollectImmutableList *)replaceValuesWithId:(id)key
                                        withJavaLangIterable:(id<JavaLangIterable>)values;

+ (id<JavaUtilStreamCollector>)toImmutableListMultimapWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)keyFunction
                                                      withJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)valueFunction;

- (ComGoogleCommonCollectImmutableCollection *)values;

#pragma mark Package-Private

- (instancetype)initWithComGoogleCommonCollectImmutableMap:(ComGoogleCommonCollectImmutableMap *)map
                                                   withInt:(jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectImmutableListMultimap)

FOUNDATION_EXPORT id<JavaUtilStreamCollector> ComGoogleCommonCollectImmutableListMultimap_toImmutableListMultimapWithJavaUtilFunctionFunction_withJavaUtilFunctionFunction_(id<JavaUtilFunctionFunction> keyFunction, id<JavaUtilFunctionFunction> valueFunction);

FOUNDATION_EXPORT id<JavaUtilStreamCollector> ComGoogleCommonCollectImmutableListMultimap_flatteningToImmutableListMultimapWithJavaUtilFunctionFunction_withJavaUtilFunctionFunction_(id<JavaUtilFunctionFunction> keyFunction, id<JavaUtilFunctionFunction> valuesFunction);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap *ComGoogleCommonCollectImmutableListMultimap_of();

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap *ComGoogleCommonCollectImmutableListMultimap_ofWithId_withId_(id k1, id v1);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap *ComGoogleCommonCollectImmutableListMultimap_ofWithId_withId_withId_withId_(id k1, id v1, id k2, id v2);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap *ComGoogleCommonCollectImmutableListMultimap_ofWithId_withId_withId_withId_withId_withId_(id k1, id v1, id k2, id v2, id k3, id v3);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap *ComGoogleCommonCollectImmutableListMultimap_ofWithId_withId_withId_withId_withId_withId_withId_withId_(id k1, id v1, id k2, id v2, id k3, id v3, id k4, id v4);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap *ComGoogleCommonCollectImmutableListMultimap_ofWithId_withId_withId_withId_withId_withId_withId_withId_withId_withId_(id k1, id v1, id k2, id v2, id k3, id v3, id k4, id v4, id k5, id v5);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap_Builder *ComGoogleCommonCollectImmutableListMultimap_builder();

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap *ComGoogleCommonCollectImmutableListMultimap_copyOfWithComGoogleCommonCollectMultimap_(id<ComGoogleCommonCollectMultimap> multimap);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap *ComGoogleCommonCollectImmutableListMultimap_copyOfWithJavaLangIterable_(id<JavaLangIterable> entries);

FOUNDATION_EXPORT void ComGoogleCommonCollectImmutableListMultimap_initWithComGoogleCommonCollectImmutableMap_withInt_(ComGoogleCommonCollectImmutableListMultimap *self, ComGoogleCommonCollectImmutableMap *map, jint size);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap *new_ComGoogleCommonCollectImmutableListMultimap_initWithComGoogleCommonCollectImmutableMap_withInt_(ComGoogleCommonCollectImmutableMap *map, jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap *create_ComGoogleCommonCollectImmutableListMultimap_initWithComGoogleCommonCollectImmutableMap_withInt_(ComGoogleCommonCollectImmutableMap *map, jint size);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectImmutableListMultimap)

#endif

#if !defined (ComGoogleCommonCollectImmutableListMultimap_Builder_) && (INCLUDE_ALL_ComGoogleCommonCollectImmutableListMultimap || defined(INCLUDE_ComGoogleCommonCollectImmutableListMultimap_Builder))
#define ComGoogleCommonCollectImmutableListMultimap_Builder_

#define RESTRICT_ComGoogleCommonCollectImmutableMultimap 1
#define INCLUDE_ComGoogleCommonCollectImmutableMultimap_Builder 1
#include "com/google/common/collect/ImmutableMultimap.h"

@class ComGoogleCommonCollectImmutableListMultimap;
@class IOSObjectArray;
@protocol ComGoogleCommonCollectMultimap;
@protocol JavaLangIterable;
@protocol JavaUtilComparator;
@protocol JavaUtilMap_Entry;

@interface ComGoogleCommonCollectImmutableListMultimap_Builder : ComGoogleCommonCollectImmutableMultimap_Builder

#pragma mark Public

- (instancetype)init;

- (ComGoogleCommonCollectImmutableListMultimap *)build;

- (ComGoogleCommonCollectImmutableListMultimap_Builder *)orderKeysByWithJavaUtilComparator:(id<JavaUtilComparator>)keyComparator;

- (ComGoogleCommonCollectImmutableListMultimap_Builder *)orderValuesByWithJavaUtilComparator:(id<JavaUtilComparator>)valueComparator;

- (ComGoogleCommonCollectImmutableListMultimap_Builder *)putWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)entry_;

- (ComGoogleCommonCollectImmutableListMultimap_Builder *)putWithId:(id)key
                                                            withId:(id)value;

- (ComGoogleCommonCollectImmutableListMultimap_Builder *)putAllWithJavaLangIterable:(id<JavaLangIterable>)entries;

- (ComGoogleCommonCollectImmutableListMultimap_Builder *)putAllWithId:(id)key
                                                 withJavaLangIterable:(id<JavaLangIterable>)values;

- (ComGoogleCommonCollectImmutableListMultimap_Builder *)putAllWithId:(id)key
                                                    withNSObjectArray:(IOSObjectArray *)values;

- (ComGoogleCommonCollectImmutableListMultimap_Builder *)putAllWithComGoogleCommonCollectMultimap:(id<ComGoogleCommonCollectMultimap>)multimap;

#pragma mark Package-Private

- (ComGoogleCommonCollectImmutableListMultimap_Builder *)combineWithComGoogleCommonCollectImmutableMultimap_Builder:(ComGoogleCommonCollectImmutableMultimap_Builder *)other;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectImmutableListMultimap_Builder)

FOUNDATION_EXPORT void ComGoogleCommonCollectImmutableListMultimap_Builder_init(ComGoogleCommonCollectImmutableListMultimap_Builder *self);

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap_Builder *new_ComGoogleCommonCollectImmutableListMultimap_Builder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonCollectImmutableListMultimap_Builder *create_ComGoogleCommonCollectImmutableListMultimap_Builder_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectImmutableListMultimap_Builder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectImmutableListMultimap")
