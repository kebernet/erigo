//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/SingletonImmutableTable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectSingletonImmutableTable")
#ifdef RESTRICT_ComGoogleCommonCollectSingletonImmutableTable
#define INCLUDE_ALL_ComGoogleCommonCollectSingletonImmutableTable 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectSingletonImmutableTable 1
#endif
#undef RESTRICT_ComGoogleCommonCollectSingletonImmutableTable

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectSingletonImmutableTable_) && (INCLUDE_ALL_ComGoogleCommonCollectSingletonImmutableTable || defined(INCLUDE_ComGoogleCommonCollectSingletonImmutableTable))
#define ComGoogleCommonCollectSingletonImmutableTable_

#define RESTRICT_ComGoogleCommonCollectImmutableTable 1
#define INCLUDE_ComGoogleCommonCollectImmutableTable 1
#include "com/google/common/collect/ImmutableTable.h"

@class ComGoogleCommonCollectImmutableCollection;
@class ComGoogleCommonCollectImmutableMap;
@class ComGoogleCommonCollectImmutableSet;
@class ComGoogleCommonCollectImmutableTable_SerializedForm;
@protocol ComGoogleCommonCollectTable_Cell;

@interface ComGoogleCommonCollectSingletonImmutableTable : ComGoogleCommonCollectImmutableTable {
 @public
  id singleRowKey_;
  id singleColumnKey_;
  id singleValue_;
}

#pragma mark Public

- (ComGoogleCommonCollectImmutableMap *)columnWithId:(id)columnKey;

- (ComGoogleCommonCollectImmutableMap *)columnMap;

- (ComGoogleCommonCollectImmutableMap *)rowMap;

- (jint)size;

#pragma mark Package-Private

- (instancetype)initWithComGoogleCommonCollectTable_Cell:(id<ComGoogleCommonCollectTable_Cell>)cell;

- (instancetype)initWithId:(id)rowKey
                    withId:(id)columnKey
                    withId:(id)value;

- (ComGoogleCommonCollectImmutableSet *)createCellSet;

- (ComGoogleCommonCollectImmutableTable_SerializedForm *)createSerializedForm;

- (ComGoogleCommonCollectImmutableCollection *)createValues;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectSingletonImmutableTable)

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectSingletonImmutableTable, singleRowKey_, id)
J2OBJC_FIELD_SETTER(ComGoogleCommonCollectSingletonImmutableTable, singleColumnKey_, id)
J2OBJC_FIELD_SETTER(ComGoogleCommonCollectSingletonImmutableTable, singleValue_, id)

FOUNDATION_EXPORT void ComGoogleCommonCollectSingletonImmutableTable_initWithId_withId_withId_(ComGoogleCommonCollectSingletonImmutableTable *self, id rowKey, id columnKey, id value);

FOUNDATION_EXPORT ComGoogleCommonCollectSingletonImmutableTable *new_ComGoogleCommonCollectSingletonImmutableTable_initWithId_withId_withId_(id rowKey, id columnKey, id value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonCollectSingletonImmutableTable *create_ComGoogleCommonCollectSingletonImmutableTable_initWithId_withId_withId_(id rowKey, id columnKey, id value);

FOUNDATION_EXPORT void ComGoogleCommonCollectSingletonImmutableTable_initWithComGoogleCommonCollectTable_Cell_(ComGoogleCommonCollectSingletonImmutableTable *self, id<ComGoogleCommonCollectTable_Cell> cell);

FOUNDATION_EXPORT ComGoogleCommonCollectSingletonImmutableTable *new_ComGoogleCommonCollectSingletonImmutableTable_initWithComGoogleCommonCollectTable_Cell_(id<ComGoogleCommonCollectTable_Cell> cell) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonCollectSingletonImmutableTable *create_ComGoogleCommonCollectSingletonImmutableTable_initWithComGoogleCommonCollectTable_Cell_(id<ComGoogleCommonCollectTable_Cell> cell);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectSingletonImmutableTable)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectSingletonImmutableTable")
