//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ForwardingMultiset.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectForwardingMultiset")
#ifdef RESTRICT_ComGoogleCommonCollectForwardingMultiset
#define INCLUDE_ALL_ComGoogleCommonCollectForwardingMultiset 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectForwardingMultiset 1
#endif
#undef RESTRICT_ComGoogleCommonCollectForwardingMultiset

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectForwardingMultiset_) && (INCLUDE_ALL_ComGoogleCommonCollectForwardingMultiset || defined(INCLUDE_ComGoogleCommonCollectForwardingMultiset))
#define ComGoogleCommonCollectForwardingMultiset_

#define RESTRICT_ComGoogleCommonCollectForwardingCollection 1
#define INCLUDE_ComGoogleCommonCollectForwardingCollection 1
#include "com/google/common/collect/ForwardingCollection.h"

#define RESTRICT_ComGoogleCommonCollectMultiset 1
#define INCLUDE_ComGoogleCommonCollectMultiset 1
#include "com/google/common/collect/Multiset.h"

@protocol JavaUtilCollection;
@protocol JavaUtilFunctionConsumer;
@protocol JavaUtilFunctionObjIntConsumer;
@protocol JavaUtilIterator;
@protocol JavaUtilSet;
@protocol JavaUtilSpliterator;

@interface ComGoogleCommonCollectForwardingMultiset : ComGoogleCommonCollectForwardingCollection < ComGoogleCommonCollectMultiset >

#pragma mark Public

- (jint)addWithId:(id)element
          withInt:(jint)occurrences;

- (jint)countWithId:(id)element;

- (id<JavaUtilSet>)elementSet;

- (id<JavaUtilSet>)entrySet;

- (jboolean)isEqual:(id)object;

- (NSUInteger)hash;

- (jint)removeWithId:(id)element
             withInt:(jint)occurrences;

- (jint)setCountWithId:(id)element
               withInt:(jint)count;

- (jboolean)setCountWithId:(id)element
                   withInt:(jint)oldCount
                   withInt:(jint)newCount;

#pragma mark Protected

- (instancetype)init;

- (id<ComGoogleCommonCollectMultiset>)delegate;

- (jboolean)standardAddWithId:(id)element;

- (jboolean)standardAddAllWithJavaUtilCollection:(id<JavaUtilCollection>)elementsToAdd;

- (void)standardClear;

- (jboolean)standardContainsWithId:(id)object;

- (jint)standardCountWithId:(id)object;

- (jboolean)standardEqualsWithId:(id)object;

- (jint)standardHashCode;

- (id<JavaUtilIterator>)standardIterator;

- (jboolean)standardRemoveWithId:(id)element;

- (jboolean)standardRemoveAllWithJavaUtilCollection:(id<JavaUtilCollection>)elementsToRemove;

- (jboolean)standardRetainAllWithJavaUtilCollection:(id<JavaUtilCollection>)elementsToRetain;

- (jint)standardSetCountWithId:(id)element
                       withInt:(jint)count;

- (jboolean)standardSetCountWithId:(id)element
                           withInt:(jint)oldCount
                           withInt:(jint)newCount;

- (jint)standardSize;

- (NSString *)standardToString;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectForwardingMultiset)

FOUNDATION_EXPORT void ComGoogleCommonCollectForwardingMultiset_init(ComGoogleCommonCollectForwardingMultiset *self);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectForwardingMultiset)

#endif

#if !defined (ComGoogleCommonCollectForwardingMultiset_StandardElementSet_) && (INCLUDE_ALL_ComGoogleCommonCollectForwardingMultiset || defined(INCLUDE_ComGoogleCommonCollectForwardingMultiset_StandardElementSet))
#define ComGoogleCommonCollectForwardingMultiset_StandardElementSet_

#define RESTRICT_ComGoogleCommonCollectMultisets 1
#define INCLUDE_ComGoogleCommonCollectMultisets_ElementSet 1
#include "com/google/common/collect/Multisets.h"

@class ComGoogleCommonCollectForwardingMultiset;
@protocol ComGoogleCommonCollectMultiset;

@interface ComGoogleCommonCollectForwardingMultiset_StandardElementSet : ComGoogleCommonCollectMultisets_ElementSet

#pragma mark Public

- (instancetype)initWithComGoogleCommonCollectForwardingMultiset:(ComGoogleCommonCollectForwardingMultiset *)outer$;

#pragma mark Package-Private

- (id<ComGoogleCommonCollectMultiset>)multiset;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectForwardingMultiset_StandardElementSet)

FOUNDATION_EXPORT void ComGoogleCommonCollectForwardingMultiset_StandardElementSet_initWithComGoogleCommonCollectForwardingMultiset_(ComGoogleCommonCollectForwardingMultiset_StandardElementSet *self, ComGoogleCommonCollectForwardingMultiset *outer$);

FOUNDATION_EXPORT ComGoogleCommonCollectForwardingMultiset_StandardElementSet *new_ComGoogleCommonCollectForwardingMultiset_StandardElementSet_initWithComGoogleCommonCollectForwardingMultiset_(ComGoogleCommonCollectForwardingMultiset *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonCollectForwardingMultiset_StandardElementSet *create_ComGoogleCommonCollectForwardingMultiset_StandardElementSet_initWithComGoogleCommonCollectForwardingMultiset_(ComGoogleCommonCollectForwardingMultiset *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectForwardingMultiset_StandardElementSet)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectForwardingMultiset")
