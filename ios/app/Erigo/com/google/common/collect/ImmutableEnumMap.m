//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ImmutableEnumMap.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/collect/CollectSpliterators.h"
#include "com/google/common/collect/ImmutableEnumMap.h"
#include "com/google/common/collect/ImmutableMap.h"
#include "com/google/common/collect/Iterables.h"
#include "com/google/common/collect/Iterators.h"
#include "com/google/common/collect/Maps.h"
#include "com/google/common/collect/UnmodifiableIterator.h"
#include "java/io/Serializable.h"
#include "java/lang/Enum.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/EnumMap.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/Spliterator.h"
#include "java/util/function/BiConsumer.h"
#include "java/util/function/Function.h"
#include "javax/annotation/Nullable.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface ComGoogleCommonCollectImmutableEnumMap () {
 @public
  JavaUtilEnumMap *delegate_;
}

- (instancetype)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)delegate;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectImmutableEnumMap, delegate_, JavaUtilEnumMap *)

__attribute__((unused)) static void ComGoogleCommonCollectImmutableEnumMap_initWithJavaUtilEnumMap_(ComGoogleCommonCollectImmutableEnumMap *self, JavaUtilEnumMap *delegate);

__attribute__((unused)) static ComGoogleCommonCollectImmutableEnumMap *new_ComGoogleCommonCollectImmutableEnumMap_initWithJavaUtilEnumMap_(JavaUtilEnumMap *delegate) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectImmutableEnumMap *create_ComGoogleCommonCollectImmutableEnumMap_initWithJavaUtilEnumMap_(JavaUtilEnumMap *delegate);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectImmutableEnumMap__Annotations$0();

@interface ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm : NSObject < JavaIoSerializable > {
 @public
  JavaUtilEnumMap *delegate_;
}

- (instancetype)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)delegate;

- (id)readResolve;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm)

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm, delegate_, JavaUtilEnumMap *)

inline jlong ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_get_serialVersionUID();
#define ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_serialVersionUID 0LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm, serialVersionUID, jlong)

__attribute__((unused)) static void ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_initWithJavaUtilEnumMap_(ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm *self, JavaUtilEnumMap *delegate);

__attribute__((unused)) static ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm *new_ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_initWithJavaUtilEnumMap_(JavaUtilEnumMap *delegate) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm *create_ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_initWithJavaUtilEnumMap_(JavaUtilEnumMap *delegate);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm)

@interface ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 : NSObject < JavaUtilFunctionFunction >

- (id)applyWithId:(id<JavaUtilMap_Entry>)a;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonCollectImmutableEnumMap_$Lambda$1)

inline ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 *ComGoogleCommonCollectImmutableEnumMap_$Lambda$1_get_instance();
static ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 *ComGoogleCommonCollectImmutableEnumMap_$Lambda$1_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectImmutableEnumMap_$Lambda$1, instance, ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 *)

__attribute__((unused)) static void ComGoogleCommonCollectImmutableEnumMap_$Lambda$1_init(ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 *self);

__attribute__((unused)) static ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 *new_ComGoogleCommonCollectImmutableEnumMap_$Lambda$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 *create_ComGoogleCommonCollectImmutableEnumMap_$Lambda$1_init();

@implementation ComGoogleCommonCollectImmutableEnumMap

+ (ComGoogleCommonCollectImmutableMap *)asImmutableWithJavaUtilEnumMap:(JavaUtilEnumMap *)map {
  return ComGoogleCommonCollectImmutableEnumMap_asImmutableWithJavaUtilEnumMap_(map);
}

- (instancetype)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)delegate {
  ComGoogleCommonCollectImmutableEnumMap_initWithJavaUtilEnumMap_(self, delegate);
  return self;
}

- (ComGoogleCommonCollectUnmodifiableIterator *)keyIterator {
  return ComGoogleCommonCollectIterators_unmodifiableIteratorWithJavaUtilIterator_([((id<JavaUtilSet>) nil_chk([((JavaUtilEnumMap *) nil_chk(delegate_)) keySet])) iterator]);
}

- (id<JavaUtilSpliterator>)keySpliterator {
  return [((id<JavaUtilSet>) nil_chk([((JavaUtilEnumMap *) nil_chk(delegate_)) keySet])) spliterator];
}

- (jint)size {
  return [((JavaUtilEnumMap *) nil_chk(delegate_)) size];
}

- (jboolean)containsKeyWithId:(id)key {
  return [((JavaUtilEnumMap *) nil_chk(delegate_)) containsKeyWithId:key];
}

- (id)getWithId:(id)key {
  return [((JavaUtilEnumMap *) nil_chk(delegate_)) getWithId:key];
}

- (jboolean)isEqual:(id)object {
  if (object == self) {
    return true;
  }
  if ([object isKindOfClass:[ComGoogleCommonCollectImmutableEnumMap class]]) {
    object = ((ComGoogleCommonCollectImmutableEnumMap *) nil_chk(((ComGoogleCommonCollectImmutableEnumMap *) cast_chk(object, [ComGoogleCommonCollectImmutableEnumMap class]))))->delegate_;
  }
  return [((JavaUtilEnumMap *) nil_chk(delegate_)) isEqual:object];
}

- (ComGoogleCommonCollectUnmodifiableIterator *)entryIterator {
  return ComGoogleCommonCollectMaps_unmodifiableEntryIteratorWithJavaUtilIterator_([((id<JavaUtilSet>) nil_chk([((JavaUtilEnumMap *) nil_chk(delegate_)) entrySet])) iterator]);
}

- (id<JavaUtilSpliterator>)entrySpliterator {
  return ComGoogleCommonCollectCollectSpliterators_mapWithJavaUtilSpliterator_withJavaUtilFunctionFunction_([((id<JavaUtilSet>) nil_chk([((JavaUtilEnumMap *) nil_chk(delegate_)) entrySet])) spliterator], JreLoadStatic(ComGoogleCommonCollectImmutableEnumMap_$Lambda$1, instance));
}

- (void)forEachWithJavaUtilFunctionBiConsumer:(id<JavaUtilFunctionBiConsumer>)action {
  [((JavaUtilEnumMap *) nil_chk(delegate_)) forEachWithJavaUtilFunctionBiConsumer:action];
}

- (jboolean)isPartialView {
  return false;
}

- (id)writeReplace {
  return new_ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_initWithJavaUtilEnumMap_(delegate_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComGoogleCommonCollectImmutableMap;", 0x8, 0, 1, -1, 2, -1, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, 3, -1, -1 },
    { NULL, "LComGoogleCommonCollectUnmodifiableIterator;", 0x0, -1, -1, -1, 4, -1, -1 },
    { NULL, "LJavaUtilSpliterator;", 0x0, -1, -1, -1, 5, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, 8 },
    { NULL, "LNSObject;", 0x1, 9, 7, -1, 10, -1, -1 },
    { NULL, "Z", 0x1, 11, 7, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCollectUnmodifiableIterator;", 0x0, -1, -1, -1, 12, -1, -1 },
    { NULL, "LJavaUtilSpliterator;", 0x0, -1, -1, -1, 13, -1, -1 },
    { NULL, "V", 0x1, 14, 15, -1, 16, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(asImmutableWithJavaUtilEnumMap:);
  methods[1].selector = @selector(initWithJavaUtilEnumMap:);
  methods[2].selector = @selector(keyIterator);
  methods[3].selector = @selector(keySpliterator);
  methods[4].selector = @selector(size);
  methods[5].selector = @selector(containsKeyWithId:);
  methods[6].selector = @selector(getWithId:);
  methods[7].selector = @selector(isEqual:);
  methods[8].selector = @selector(entryIterator);
  methods[9].selector = @selector(entrySpliterator);
  methods[10].selector = @selector(forEachWithJavaUtilFunctionBiConsumer:);
  methods[11].selector = @selector(isPartialView);
  methods[12].selector = @selector(writeReplace);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LJavaUtilEnumMap;", .constantValue.asLong = 0, 0x92, -1, -1, 17, -1 },
  };
  static const void *ptrTable[] = { "asImmutable", "LJavaUtilEnumMap;", "<K:Ljava/lang/Enum<TK;>;V:Ljava/lang/Object;>(Ljava/util/EnumMap<TK;TV;>;)Lcom/google/common/collect/ImmutableMap<TK;TV;>;", "(Ljava/util/EnumMap<TK;TV;>;)V", "()Lcom/google/common/collect/UnmodifiableIterator<TK;>;", "()Ljava/util/Spliterator<TK;>;", "containsKey", "LNSObject;", (void *)&ComGoogleCommonCollectImmutableEnumMap__Annotations$0, "get", "(Ljava/lang/Object;)TV;", "equals", "()Lcom/google/common/collect/UnmodifiableIterator<Ljava/util/Map$Entry<TK;TV;>;>;", "()Ljava/util/Spliterator<Ljava/util/Map$Entry<TK;TV;>;>;", "forEach", "LJavaUtilFunctionBiConsumer;", "(Ljava/util/function/BiConsumer<-TK;-TV;>;)V", "Ljava/util/EnumMap<TK;TV;>;", "LComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm;", "<K:Ljava/lang/Enum<TK;>;V:Ljava/lang/Object;>Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectImmutableEnumMap = { "ImmutableEnumMap", "com.google.common.collect", ptrTable, methods, fields, 7, 0x10, 13, 1, -1, 18, -1, 19, -1 };
  return &_ComGoogleCommonCollectImmutableEnumMap;
}

@end

ComGoogleCommonCollectImmutableMap *ComGoogleCommonCollectImmutableEnumMap_asImmutableWithJavaUtilEnumMap_(JavaUtilEnumMap *map) {
  ComGoogleCommonCollectImmutableEnumMap_initialize();
  {
    id<JavaUtilMap_Entry> entry_;
    switch ([((JavaUtilEnumMap *) nil_chk(map)) size]) {
      case 0:
      return ComGoogleCommonCollectImmutableMap_of();
      case 1:
      entry_ = ComGoogleCommonCollectIterables_getOnlyElementWithJavaLangIterable_([map entrySet]);
      return ComGoogleCommonCollectImmutableMap_ofWithId_withId_([((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey], [entry_ getValue]);
      default:
      return new_ComGoogleCommonCollectImmutableEnumMap_initWithJavaUtilEnumMap_(map);
    }
  }
}

void ComGoogleCommonCollectImmutableEnumMap_initWithJavaUtilEnumMap_(ComGoogleCommonCollectImmutableEnumMap *self, JavaUtilEnumMap *delegate) {
  ComGoogleCommonCollectImmutableMap_IteratorBasedImmutableMap_init(self);
  self->delegate_ = delegate;
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_(![((JavaUtilEnumMap *) nil_chk(delegate)) isEmpty]);
}

ComGoogleCommonCollectImmutableEnumMap *new_ComGoogleCommonCollectImmutableEnumMap_initWithJavaUtilEnumMap_(JavaUtilEnumMap *delegate) {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectImmutableEnumMap, initWithJavaUtilEnumMap_, delegate)
}

ComGoogleCommonCollectImmutableEnumMap *create_ComGoogleCommonCollectImmutableEnumMap_initWithJavaUtilEnumMap_(JavaUtilEnumMap *delegate) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectImmutableEnumMap, initWithJavaUtilEnumMap_, delegate)
}

IOSObjectArray *ComGoogleCommonCollectImmutableEnumMap__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectImmutableEnumMap)

@implementation ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm

- (instancetype)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)delegate {
  ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_initWithJavaUtilEnumMap_(self, delegate);
  return self;
}

- (id)readResolve {
  return new_ComGoogleCommonCollectImmutableEnumMap_initWithJavaUtilEnumMap_(delegate_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilEnumMap:);
  methods[1].selector = @selector(readResolve);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LJavaUtilEnumMap;", .constantValue.asLong = 0, 0x10, -1, -1, 2, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilEnumMap;", "(Ljava/util/EnumMap<TK;TV;>;)V", "Ljava/util/EnumMap<TK;TV;>;", "LComGoogleCommonCollectImmutableEnumMap;", "<K:Ljava/lang/Enum<TK;>;V:Ljava/lang/Object;>Ljava/lang/Object;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm = { "EnumSerializedForm", "com.google.common.collect", ptrTable, methods, fields, 7, 0xa, 2, 2, 3, -1, -1, 4, -1 };
  return &_ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm;
}

@end

void ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_initWithJavaUtilEnumMap_(ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm *self, JavaUtilEnumMap *delegate) {
  NSObject_init(self);
  self->delegate_ = delegate;
}

ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm *new_ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_initWithJavaUtilEnumMap_(JavaUtilEnumMap *delegate) {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm, initWithJavaUtilEnumMap_, delegate)
}

ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm *create_ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm_initWithJavaUtilEnumMap_(JavaUtilEnumMap *delegate) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm, initWithJavaUtilEnumMap_, delegate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectImmutableEnumMap_EnumSerializedForm)

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectImmutableEnumMap_$Lambda$1)

@implementation ComGoogleCommonCollectImmutableEnumMap_$Lambda$1

- (id)applyWithId:(id<JavaUtilMap_Entry>)a {
  return ComGoogleCommonCollectMaps_unmodifiableEntryWithJavaUtilMap_Entry_(a);
}

- (id<JavaUtilFunctionFunction>)composeWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_composeWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilFunctionFunction>)andThenWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_andThenWithJavaUtilFunctionFunction_(self, arg0);
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 class]) {
    ComGoogleCommonCollectImmutableEnumMap_$Lambda$1_instance = new_ComGoogleCommonCollectImmutableEnumMap_$Lambda$1_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectImmutableEnumMap_$Lambda$1)
  }
}

@end

void ComGoogleCommonCollectImmutableEnumMap_$Lambda$1_init(ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 *new_ComGoogleCommonCollectImmutableEnumMap_$Lambda$1_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectImmutableEnumMap_$Lambda$1, init)
}

ComGoogleCommonCollectImmutableEnumMap_$Lambda$1 *create_ComGoogleCommonCollectImmutableEnumMap_$Lambda$1_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectImmutableEnumMap_$Lambda$1, init)
}