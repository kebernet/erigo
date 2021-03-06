//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/UnmodifiableSortedMultiset.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/common/collect/BoundType.h"
#include "com/google/common/collect/Multiset.h"
#include "com/google/common/collect/Multisets.h"
#include "com/google/common/collect/Sets.h"
#include "com/google/common/collect/SortedMultiset.h"
#include "com/google/common/collect/UnmodifiableSortedMultiset.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Comparator.h"
#include "java/util/NavigableSet.h"
#include "java/util/Set.h"

@interface ComGoogleCommonCollectUnmodifiableSortedMultiset () {
 @public
  ComGoogleCommonCollectUnmodifiableSortedMultiset *descendingMultiset_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectUnmodifiableSortedMultiset, descendingMultiset_, ComGoogleCommonCollectUnmodifiableSortedMultiset *)

inline jlong ComGoogleCommonCollectUnmodifiableSortedMultiset_get_serialVersionUID();
#define ComGoogleCommonCollectUnmodifiableSortedMultiset_serialVersionUID 0LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonCollectUnmodifiableSortedMultiset, serialVersionUID, jlong)

@implementation ComGoogleCommonCollectUnmodifiableSortedMultiset

- (instancetype)initWithComGoogleCommonCollectSortedMultiset:(id<ComGoogleCommonCollectSortedMultiset>)delegate {
  ComGoogleCommonCollectUnmodifiableSortedMultiset_initWithComGoogleCommonCollectSortedMultiset_(self, delegate);
  return self;
}

- (id<ComGoogleCommonCollectSortedMultiset>)delegate {
  return (id<ComGoogleCommonCollectSortedMultiset>) cast_check([super delegate], ComGoogleCommonCollectSortedMultiset_class_());
}

- (id<JavaUtilComparator>)comparator {
  return [((id<ComGoogleCommonCollectSortedMultiset>) nil_chk([self delegate])) comparator];
}

- (id<JavaUtilNavigableSet>)createElementSet {
  return ComGoogleCommonCollectSets_unmodifiableNavigableSetWithJavaUtilNavigableSet_([((id<ComGoogleCommonCollectSortedMultiset>) nil_chk([self delegate])) elementSet]);
}

- (id<JavaUtilNavigableSet>)elementSet {
  return (id<JavaUtilNavigableSet>) cast_check([super elementSet], JavaUtilNavigableSet_class_());
}

- (id<ComGoogleCommonCollectSortedMultiset>)descendingMultiset {
  ComGoogleCommonCollectUnmodifiableSortedMultiset *result = descendingMultiset_;
  if (result == nil) {
    result = new_ComGoogleCommonCollectUnmodifiableSortedMultiset_initWithComGoogleCommonCollectSortedMultiset_([((id<ComGoogleCommonCollectSortedMultiset>) nil_chk([self delegate])) descendingMultiset]);
    result->descendingMultiset_ = self;
    return descendingMultiset_ = result;
  }
  return result;
}

- (id<ComGoogleCommonCollectMultiset_Entry>)firstEntry {
  return [((id<ComGoogleCommonCollectSortedMultiset>) nil_chk([self delegate])) firstEntry];
}

- (id<ComGoogleCommonCollectMultiset_Entry>)lastEntry {
  return [((id<ComGoogleCommonCollectSortedMultiset>) nil_chk([self delegate])) lastEntry];
}

- (id<ComGoogleCommonCollectMultiset_Entry>)pollFirstEntry {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (id<ComGoogleCommonCollectMultiset_Entry>)pollLastEntry {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (id<ComGoogleCommonCollectSortedMultiset>)headMultisetWithId:(id)upperBound
                           withComGoogleCommonCollectBoundType:(ComGoogleCommonCollectBoundType *)boundType {
  return ComGoogleCommonCollectMultisets_unmodifiableSortedMultisetWithComGoogleCommonCollectSortedMultiset_([((id<ComGoogleCommonCollectSortedMultiset>) nil_chk([self delegate])) headMultisetWithId:upperBound withComGoogleCommonCollectBoundType:boundType]);
}

- (id<ComGoogleCommonCollectSortedMultiset>)subMultisetWithId:(id)lowerBound
                          withComGoogleCommonCollectBoundType:(ComGoogleCommonCollectBoundType *)lowerBoundType
                                                       withId:(id)upperBound
                          withComGoogleCommonCollectBoundType:(ComGoogleCommonCollectBoundType *)upperBoundType {
  return ComGoogleCommonCollectMultisets_unmodifiableSortedMultisetWithComGoogleCommonCollectSortedMultiset_([((id<ComGoogleCommonCollectSortedMultiset>) nil_chk([self delegate])) subMultisetWithId:lowerBound withComGoogleCommonCollectBoundType:lowerBoundType withId:upperBound withComGoogleCommonCollectBoundType:upperBoundType]);
}

- (id<ComGoogleCommonCollectSortedMultiset>)tailMultisetWithId:(id)lowerBound
                           withComGoogleCommonCollectBoundType:(ComGoogleCommonCollectBoundType *)boundType {
  return ComGoogleCommonCollectMultisets_unmodifiableSortedMultisetWithComGoogleCommonCollectSortedMultiset_([((id<ComGoogleCommonCollectSortedMultiset>) nil_chk([self delegate])) tailMultisetWithId:lowerBound withComGoogleCommonCollectBoundType:boundType]);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LComGoogleCommonCollectSortedMultiset;", 0x4, -1, -1, -1, 2, -1, -1 },
    { NULL, "LJavaUtilComparator;", 0x1, -1, -1, -1, 3, -1, -1 },
    { NULL, "LJavaUtilNavigableSet;", 0x0, -1, -1, -1, 4, -1, -1 },
    { NULL, "LJavaUtilNavigableSet;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "LComGoogleCommonCollectSortedMultiset;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LComGoogleCommonCollectMultiset_Entry;", 0x1, -1, -1, -1, 5, -1, -1 },
    { NULL, "LComGoogleCommonCollectMultiset_Entry;", 0x1, -1, -1, -1, 5, -1, -1 },
    { NULL, "LComGoogleCommonCollectMultiset_Entry;", 0x1, -1, -1, -1, 5, -1, -1 },
    { NULL, "LComGoogleCommonCollectMultiset_Entry;", 0x1, -1, -1, -1, 5, -1, -1 },
    { NULL, "LComGoogleCommonCollectSortedMultiset;", 0x1, 6, 7, -1, 8, -1, -1 },
    { NULL, "LComGoogleCommonCollectSortedMultiset;", 0x1, 9, 10, -1, 11, -1, -1 },
    { NULL, "LComGoogleCommonCollectSortedMultiset;", 0x1, 12, 7, -1, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonCollectSortedMultiset:);
  methods[1].selector = @selector(delegate);
  methods[2].selector = @selector(comparator);
  methods[3].selector = @selector(createElementSet);
  methods[4].selector = @selector(elementSet);
  methods[5].selector = @selector(descendingMultiset);
  methods[6].selector = @selector(firstEntry);
  methods[7].selector = @selector(lastEntry);
  methods[8].selector = @selector(pollFirstEntry);
  methods[9].selector = @selector(pollLastEntry);
  methods[10].selector = @selector(headMultisetWithId:withComGoogleCommonCollectBoundType:);
  methods[11].selector = @selector(subMultisetWithId:withComGoogleCommonCollectBoundType:withId:withComGoogleCommonCollectBoundType:);
  methods[12].selector = @selector(tailMultisetWithId:withComGoogleCommonCollectBoundType:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "descendingMultiset_", "LComGoogleCommonCollectUnmodifiableSortedMultiset;", .constantValue.asLong = 0, 0x82, -1, -1, 13, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonCollectUnmodifiableSortedMultiset_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonCollectSortedMultiset;", "(Lcom/google/common/collect/SortedMultiset<TE;>;)V", "()Lcom/google/common/collect/SortedMultiset<TE;>;", "()Ljava/util/Comparator<-TE;>;", "()Ljava/util/NavigableSet<TE;>;", "()Lcom/google/common/collect/Multiset$Entry<TE;>;", "headMultiset", "LNSObject;LComGoogleCommonCollectBoundType;", "(TE;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset<TE;>;", "subMultiset", "LNSObject;LComGoogleCommonCollectBoundType;LNSObject;LComGoogleCommonCollectBoundType;", "(TE;Lcom/google/common/collect/BoundType;TE;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset<TE;>;", "tailMultiset", "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;", "<E:Ljava/lang/Object;>Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;Lcom/google/common/collect/SortedMultiset<TE;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectUnmodifiableSortedMultiset = { "UnmodifiableSortedMultiset", "com.google.common.collect", ptrTable, methods, fields, 7, 0x10, 13, 2, -1, -1, -1, 14, -1 };
  return &_ComGoogleCommonCollectUnmodifiableSortedMultiset;
}

@end

void ComGoogleCommonCollectUnmodifiableSortedMultiset_initWithComGoogleCommonCollectSortedMultiset_(ComGoogleCommonCollectUnmodifiableSortedMultiset *self, id<ComGoogleCommonCollectSortedMultiset> delegate) {
  ComGoogleCommonCollectMultisets_UnmodifiableMultiset_initWithComGoogleCommonCollectMultiset_(self, delegate);
}

ComGoogleCommonCollectUnmodifiableSortedMultiset *new_ComGoogleCommonCollectUnmodifiableSortedMultiset_initWithComGoogleCommonCollectSortedMultiset_(id<ComGoogleCommonCollectSortedMultiset> delegate) {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectUnmodifiableSortedMultiset, initWithComGoogleCommonCollectSortedMultiset_, delegate)
}

ComGoogleCommonCollectUnmodifiableSortedMultiset *create_ComGoogleCommonCollectUnmodifiableSortedMultiset_initWithComGoogleCommonCollectSortedMultiset_(id<ComGoogleCommonCollectSortedMultiset> delegate) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectUnmodifiableSortedMultiset, initWithComGoogleCommonCollectSortedMultiset_, delegate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectUnmodifiableSortedMultiset)
