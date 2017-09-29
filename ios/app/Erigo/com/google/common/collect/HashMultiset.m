//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/HashMultiset.java
//

#include "J2ObjC_source.h"
#include "com/google/common/collect/AbstractMapBasedMultiset.h"
#include "com/google/common/collect/HashMultiset.h"
#include "com/google/common/collect/Iterables.h"
#include "com/google/common/collect/Maps.h"
#include "com/google/common/collect/Multisets.h"
#include "com/google/common/collect/Serialization.h"
#include "java/io/ObjectInputStream.h"
#include "java/io/ObjectOutputStream.h"
#include "java/lang/Iterable.h"
#include "java/util/HashMap.h"

@interface ComGoogleCommonCollectHashMultiset ()

- (instancetype)init;

- (instancetype)initWithInt:(jint)distinctElements;

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)stream;

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)stream;

@end

inline jlong ComGoogleCommonCollectHashMultiset_get_serialVersionUID();
#define ComGoogleCommonCollectHashMultiset_serialVersionUID 0LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonCollectHashMultiset, serialVersionUID, jlong)

__attribute__((unused)) static void ComGoogleCommonCollectHashMultiset_init(ComGoogleCommonCollectHashMultiset *self);

__attribute__((unused)) static ComGoogleCommonCollectHashMultiset *new_ComGoogleCommonCollectHashMultiset_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectHashMultiset *create_ComGoogleCommonCollectHashMultiset_init();

__attribute__((unused)) static void ComGoogleCommonCollectHashMultiset_initWithInt_(ComGoogleCommonCollectHashMultiset *self, jint distinctElements);

__attribute__((unused)) static ComGoogleCommonCollectHashMultiset *new_ComGoogleCommonCollectHashMultiset_initWithInt_(jint distinctElements) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectHashMultiset *create_ComGoogleCommonCollectHashMultiset_initWithInt_(jint distinctElements);

@implementation ComGoogleCommonCollectHashMultiset

+ (ComGoogleCommonCollectHashMultiset *)create {
  return ComGoogleCommonCollectHashMultiset_create();
}

+ (ComGoogleCommonCollectHashMultiset *)createWithInt:(jint)distinctElements {
  return ComGoogleCommonCollectHashMultiset_createWithInt_(distinctElements);
}

+ (ComGoogleCommonCollectHashMultiset *)createWithJavaLangIterable:(id<JavaLangIterable>)elements {
  return ComGoogleCommonCollectHashMultiset_createWithJavaLangIterable_(elements);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCollectHashMultiset_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)distinctElements {
  ComGoogleCommonCollectHashMultiset_initWithInt_(self, distinctElements);
  return self;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)stream {
  [((JavaIoObjectOutputStream *) nil_chk(stream)) defaultWriteObject];
  ComGoogleCommonCollectSerialization_writeMultisetWithComGoogleCommonCollectMultiset_withJavaIoObjectOutputStream_(self, stream);
}

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)stream {
  [((JavaIoObjectInputStream *) nil_chk(stream)) defaultReadObject];
  jint distinctElements = ComGoogleCommonCollectSerialization_readCountWithJavaIoObjectInputStream_(stream);
  [self setBackingMapWithJavaUtilMap:ComGoogleCommonCollectMaps_newHashMap()];
  ComGoogleCommonCollectSerialization_populateMultisetWithComGoogleCommonCollectMultiset_withJavaIoObjectInputStream_withInt_(self, stream, distinctElements);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComGoogleCommonCollectHashMultiset;", 0x9, -1, -1, -1, 0, -1, -1 },
    { NULL, "LComGoogleCommonCollectHashMultiset;", 0x9, 1, 2, -1, 3, -1, -1 },
    { NULL, "LComGoogleCommonCollectHashMultiset;", 0x9, 1, 4, -1, 5, -1, -1 },
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 6, 7, 8, -1, -1, -1 },
    { NULL, "V", 0x2, 9, 10, 11, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(create);
  methods[1].selector = @selector(createWithInt:);
  methods[2].selector = @selector(createWithJavaLangIterable:);
  methods[3].selector = @selector(init);
  methods[4].selector = @selector(initWithInt:);
  methods[5].selector = @selector(writeObjectWithJavaIoObjectOutputStream:);
  methods[6].selector = @selector(readObjectWithJavaIoObjectInputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonCollectHashMultiset_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "<E:Ljava/lang/Object;>()Lcom/google/common/collect/HashMultiset<TE;>;", "create", "I", "<E:Ljava/lang/Object;>(I)Lcom/google/common/collect/HashMultiset<TE;>;", "LJavaLangIterable;", "<E:Ljava/lang/Object;>(Ljava/lang/Iterable<+TE;>;)Lcom/google/common/collect/HashMultiset<TE;>;", "writeObject", "LJavaIoObjectOutputStream;", "LJavaIoIOException;", "readObject", "LJavaIoObjectInputStream;", "LJavaIoIOException;LJavaLangClassNotFoundException;", "<E:Ljava/lang/Object;>Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectHashMultiset = { "HashMultiset", "com.google.common.collect", ptrTable, methods, fields, 7, 0x11, 7, 1, -1, -1, -1, 12, -1 };
  return &_ComGoogleCommonCollectHashMultiset;
}

@end

ComGoogleCommonCollectHashMultiset *ComGoogleCommonCollectHashMultiset_create() {
  ComGoogleCommonCollectHashMultiset_initialize();
  return new_ComGoogleCommonCollectHashMultiset_init();
}

ComGoogleCommonCollectHashMultiset *ComGoogleCommonCollectHashMultiset_createWithInt_(jint distinctElements) {
  ComGoogleCommonCollectHashMultiset_initialize();
  return new_ComGoogleCommonCollectHashMultiset_initWithInt_(distinctElements);
}

ComGoogleCommonCollectHashMultiset *ComGoogleCommonCollectHashMultiset_createWithJavaLangIterable_(id<JavaLangIterable> elements) {
  ComGoogleCommonCollectHashMultiset_initialize();
  ComGoogleCommonCollectHashMultiset *multiset = ComGoogleCommonCollectHashMultiset_createWithInt_(ComGoogleCommonCollectMultisets_inferDistinctElementsWithJavaLangIterable_(elements));
  ComGoogleCommonCollectIterables_addAllWithJavaUtilCollection_withJavaLangIterable_(multiset, elements);
  return multiset;
}

void ComGoogleCommonCollectHashMultiset_init(ComGoogleCommonCollectHashMultiset *self) {
  ComGoogleCommonCollectAbstractMapBasedMultiset_initWithJavaUtilMap_(self, new_JavaUtilHashMap_init());
}

ComGoogleCommonCollectHashMultiset *new_ComGoogleCommonCollectHashMultiset_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectHashMultiset, init)
}

ComGoogleCommonCollectHashMultiset *create_ComGoogleCommonCollectHashMultiset_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectHashMultiset, init)
}

void ComGoogleCommonCollectHashMultiset_initWithInt_(ComGoogleCommonCollectHashMultiset *self, jint distinctElements) {
  ComGoogleCommonCollectAbstractMapBasedMultiset_initWithJavaUtilMap_(self, ComGoogleCommonCollectMaps_newHashMapWithExpectedSizeWithInt_(distinctElements));
}

ComGoogleCommonCollectHashMultiset *new_ComGoogleCommonCollectHashMultiset_initWithInt_(jint distinctElements) {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectHashMultiset, initWithInt_, distinctElements)
}

ComGoogleCommonCollectHashMultiset *create_ComGoogleCommonCollectHashMultiset_initWithInt_(jint distinctElements) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectHashMultiset, initWithInt_, distinctElements)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectHashMultiset)