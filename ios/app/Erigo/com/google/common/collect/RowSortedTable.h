//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/RowSortedTable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonCollectRowSortedTable")
#ifdef RESTRICT_ComGoogleCommonCollectRowSortedTable
#define INCLUDE_ALL_ComGoogleCommonCollectRowSortedTable 0
#else
#define INCLUDE_ALL_ComGoogleCommonCollectRowSortedTable 1
#endif
#undef RESTRICT_ComGoogleCommonCollectRowSortedTable

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonCollectRowSortedTable_) && (INCLUDE_ALL_ComGoogleCommonCollectRowSortedTable || defined(INCLUDE_ComGoogleCommonCollectRowSortedTable))
#define ComGoogleCommonCollectRowSortedTable_

#define RESTRICT_ComGoogleCommonCollectTable 1
#define INCLUDE_ComGoogleCommonCollectTable 1
#include "com/google/common/collect/Table.h"

@protocol JavaUtilSortedMap;
@protocol JavaUtilSortedSet;

@protocol ComGoogleCommonCollectRowSortedTable < ComGoogleCommonCollectTable, JavaObject >

- (id<JavaUtilSortedSet>)rowKeySet;

- (id<JavaUtilSortedMap>)rowMap;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectRowSortedTable)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectRowSortedTable)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonCollectRowSortedTable")
