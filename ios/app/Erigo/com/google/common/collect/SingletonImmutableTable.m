//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/SingletonImmutableTable.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/collect/ImmutableCollection.h"
#include "com/google/common/collect/ImmutableMap.h"
#include "com/google/common/collect/ImmutableSet.h"
#include "com/google/common/collect/ImmutableTable.h"
#include "com/google/common/collect/SingletonImmutableTable.h"
#include "com/google/common/collect/Table.h"

@implementation ComGoogleCommonCollectSingletonImmutableTable

- (instancetype)initWithId:(id)rowKey
                    withId:(id)columnKey
                    withId:(id)value {
  ComGoogleCommonCollectSingletonImmutableTable_initWithId_withId_withId_(self, rowKey, columnKey, value);
  return self;
}

- (instancetype)initWithComGoogleCommonCollectTable_Cell:(id<ComGoogleCommonCollectTable_Cell>)cell {
  ComGoogleCommonCollectSingletonImmutableTable_initWithComGoogleCommonCollectTable_Cell_(self, cell);
  return self;
}

- (ComGoogleCommonCollectImmutableMap *)columnWithId:(id)columnKey {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(columnKey);
  return [self containsColumnWithId:columnKey] ? ComGoogleCommonCollectImmutableMap_ofWithId_withId_(singleRowKey_, singleValue_) : ComGoogleCommonCollectImmutableMap_of();
}

- (ComGoogleCommonCollectImmutableMap *)columnMap {
  return ComGoogleCommonCollectImmutableMap_ofWithId_withId_(singleColumnKey_, ComGoogleCommonCollectImmutableMap_ofWithId_withId_(singleRowKey_, singleValue_));
}

- (ComGoogleCommonCollectImmutableMap *)rowMap {
  return ComGoogleCommonCollectImmutableMap_ofWithId_withId_(singleRowKey_, ComGoogleCommonCollectImmutableMap_ofWithId_withId_(singleColumnKey_, singleValue_));
}

- (jint)size {
  return 1;
}

- (ComGoogleCommonCollectImmutableSet *)createCellSet {
  return ComGoogleCommonCollectImmutableSet_ofWithId_(ComGoogleCommonCollectImmutableTable_cellOfWithId_withId_withId_(singleRowKey_, singleColumnKey_, singleValue_));
}

- (ComGoogleCommonCollectImmutableCollection *)createValues {
  return ComGoogleCommonCollectImmutableSet_ofWithId_(singleValue_);
}

- (ComGoogleCommonCollectImmutableTable_SerializedForm *)createSerializedForm {
  return ComGoogleCommonCollectImmutableTable_SerializedForm_createWithComGoogleCommonCollectImmutableTable_withIntArray_withIntArray_(self, [IOSIntArray newArrayWithInts:(jint[]){ 0 } count:1], [IOSIntArray newArrayWithInts:(jint[]){ 0 } count:1]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x0, -1, 2, -1, 3, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableMap;", 0x1, 4, 5, -1, 6, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableMap;", 0x1, -1, -1, -1, 7, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableMap;", 0x1, -1, -1, -1, 8, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableSet;", 0x0, -1, -1, -1, 9, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableCollection;", 0x0, -1, -1, -1, 10, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableTable_SerializedForm;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:withId:withId:);
  methods[1].selector = @selector(initWithComGoogleCommonCollectTable_Cell:);
  methods[2].selector = @selector(columnWithId:);
  methods[3].selector = @selector(columnMap);
  methods[4].selector = @selector(rowMap);
  methods[5].selector = @selector(size);
  methods[6].selector = @selector(createCellSet);
  methods[7].selector = @selector(createValues);
  methods[8].selector = @selector(createSerializedForm);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "singleRowKey_", "LNSObject;", .constantValue.asLong = 0, 0x10, -1, -1, 11, -1 },
    { "singleColumnKey_", "LNSObject;", .constantValue.asLong = 0, 0x10, -1, -1, 12, -1 },
    { "singleValue_", "LNSObject;", .constantValue.asLong = 0, 0x10, -1, -1, 13, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;LNSObject;LNSObject;", "(TR;TC;TV;)V", "LComGoogleCommonCollectTable_Cell;", "(Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;)V", "column", "LNSObject;", "(TC;)Lcom/google/common/collect/ImmutableMap<TR;TV;>;", "()Lcom/google/common/collect/ImmutableMap<TC;Ljava/util/Map<TR;TV;>;>;", "()Lcom/google/common/collect/ImmutableMap<TR;Ljava/util/Map<TC;TV;>;>;", "()Lcom/google/common/collect/ImmutableSet<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;", "()Lcom/google/common/collect/ImmutableCollection<TV;>;", "TR;", "TC;", "TV;", "<R:Ljava/lang/Object;C:Ljava/lang/Object;V:Ljava/lang/Object;>Lcom/google/common/collect/ImmutableTable<TR;TC;TV;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectSingletonImmutableTable = { "SingletonImmutableTable", "com.google.common.collect", ptrTable, methods, fields, 7, 0x0, 9, 3, -1, -1, -1, 14, -1 };
  return &_ComGoogleCommonCollectSingletonImmutableTable;
}

@end

void ComGoogleCommonCollectSingletonImmutableTable_initWithId_withId_withId_(ComGoogleCommonCollectSingletonImmutableTable *self, id rowKey, id columnKey, id value) {
  ComGoogleCommonCollectImmutableTable_init(self);
  self->singleRowKey_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(rowKey);
  self->singleColumnKey_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(columnKey);
  self->singleValue_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(value);
}

ComGoogleCommonCollectSingletonImmutableTable *new_ComGoogleCommonCollectSingletonImmutableTable_initWithId_withId_withId_(id rowKey, id columnKey, id value) {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectSingletonImmutableTable, initWithId_withId_withId_, rowKey, columnKey, value)
}

ComGoogleCommonCollectSingletonImmutableTable *create_ComGoogleCommonCollectSingletonImmutableTable_initWithId_withId_withId_(id rowKey, id columnKey, id value) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectSingletonImmutableTable, initWithId_withId_withId_, rowKey, columnKey, value)
}

void ComGoogleCommonCollectSingletonImmutableTable_initWithComGoogleCommonCollectTable_Cell_(ComGoogleCommonCollectSingletonImmutableTable *self, id<ComGoogleCommonCollectTable_Cell> cell) {
  ComGoogleCommonCollectSingletonImmutableTable_initWithId_withId_withId_(self, [((id<ComGoogleCommonCollectTable_Cell>) nil_chk(cell)) getRowKey], [cell getColumnKey], [cell getValue]);
}

ComGoogleCommonCollectSingletonImmutableTable *new_ComGoogleCommonCollectSingletonImmutableTable_initWithComGoogleCommonCollectTable_Cell_(id<ComGoogleCommonCollectTable_Cell> cell) {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectSingletonImmutableTable, initWithComGoogleCommonCollectTable_Cell_, cell)
}

ComGoogleCommonCollectSingletonImmutableTable *create_ComGoogleCommonCollectSingletonImmutableTable_initWithComGoogleCommonCollectTable_Cell_(id<ComGoogleCommonCollectTable_Cell> cell) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectSingletonImmutableTable, initWithComGoogleCommonCollectTable_Cell_, cell)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectSingletonImmutableTable)