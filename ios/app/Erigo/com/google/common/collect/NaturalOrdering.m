//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/NaturalOrdering.java
//

#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/collect/NaturalOrdering.h"
#include "com/google/common/collect/Ordering.h"
#include "com/google/common/collect/ReverseNaturalOrdering.h"
#include "java/lang/Comparable.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ComGoogleCommonCollectNaturalOrdering () {
 @public
  ComGoogleCommonCollectOrdering *nullsFirst_;
  ComGoogleCommonCollectOrdering *nullsLast_;
}

- (id)readResolve;

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectNaturalOrdering, nullsFirst_, ComGoogleCommonCollectOrdering *)
J2OBJC_FIELD_SETTER(ComGoogleCommonCollectNaturalOrdering, nullsLast_, ComGoogleCommonCollectOrdering *)

inline jlong ComGoogleCommonCollectNaturalOrdering_get_serialVersionUID();
#define ComGoogleCommonCollectNaturalOrdering_serialVersionUID 0LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonCollectNaturalOrdering, serialVersionUID, jlong)

__attribute__((unused)) static void ComGoogleCommonCollectNaturalOrdering_init(ComGoogleCommonCollectNaturalOrdering *self);

__attribute__((unused)) static ComGoogleCommonCollectNaturalOrdering *new_ComGoogleCommonCollectNaturalOrdering_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectNaturalOrdering *create_ComGoogleCommonCollectNaturalOrdering_init();

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectNaturalOrdering)

ComGoogleCommonCollectNaturalOrdering *ComGoogleCommonCollectNaturalOrdering_INSTANCE;

@implementation ComGoogleCommonCollectNaturalOrdering

- (jint)compareWithId:(id<JavaLangComparable>)left
               withId:(id<JavaLangComparable>)right {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(left);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(right);
  return [((id<JavaLangComparable>) nil_chk(left)) compareToWithId:right];
}

- (ComGoogleCommonCollectOrdering *)nullsFirst {
  ComGoogleCommonCollectOrdering *result = nullsFirst_;
  if (result == nil) {
    result = nullsFirst_ = [super nullsFirst];
  }
  return result;
}

- (ComGoogleCommonCollectOrdering *)nullsLast {
  ComGoogleCommonCollectOrdering *result = nullsLast_;
  if (result == nil) {
    result = nullsLast_ = [super nullsLast];
  }
  return result;
}

- (ComGoogleCommonCollectOrdering *)reverse {
  return JreLoadStatic(ComGoogleCommonCollectReverseNaturalOrdering, INSTANCE);
}

- (id)readResolve {
  return ComGoogleCommonCollectNaturalOrdering_INSTANCE;
}

- (NSString *)description {
  return @"Ordering.natural()";
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCollectNaturalOrdering_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCollectOrdering;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LComGoogleCommonCollectOrdering;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LComGoogleCommonCollectOrdering;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(compareWithId:withId:);
  methods[1].selector = @selector(nullsFirst);
  methods[2].selector = @selector(nullsLast);
  methods[3].selector = @selector(reverse);
  methods[4].selector = @selector(readResolve);
  methods[5].selector = @selector(description);
  methods[6].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LComGoogleCommonCollectNaturalOrdering;", .constantValue.asLong = 0, 0x18, -1, 4, -1, -1 },
    { "nullsFirst_", "LComGoogleCommonCollectOrdering;", .constantValue.asLong = 0, 0x82, -1, -1, 5, -1 },
    { "nullsLast_", "LComGoogleCommonCollectOrdering;", .constantValue.asLong = 0, 0x82, -1, -1, 5, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonCollectNaturalOrdering_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "compare", "LJavaLangComparable;LJavaLangComparable;", "<S::Ljava/lang/Comparable;>()Lcom/google/common/collect/Ordering<TS;>;", "toString", &ComGoogleCommonCollectNaturalOrdering_INSTANCE, "Lcom/google/common/collect/Ordering<Ljava/lang/Comparable;>;", "Lcom/google/common/collect/Ordering<Ljava/lang/Comparable;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectNaturalOrdering = { "NaturalOrdering", "com.google.common.collect", ptrTable, methods, fields, 7, 0x10, 7, 4, -1, -1, -1, 6, -1 };
  return &_ComGoogleCommonCollectNaturalOrdering;
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectNaturalOrdering class]) {
    ComGoogleCommonCollectNaturalOrdering_INSTANCE = new_ComGoogleCommonCollectNaturalOrdering_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectNaturalOrdering)
  }
}

@end

void ComGoogleCommonCollectNaturalOrdering_init(ComGoogleCommonCollectNaturalOrdering *self) {
  ComGoogleCommonCollectOrdering_init(self);
}

ComGoogleCommonCollectNaturalOrdering *new_ComGoogleCommonCollectNaturalOrdering_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectNaturalOrdering, init)
}

ComGoogleCommonCollectNaturalOrdering *create_ComGoogleCommonCollectNaturalOrdering_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectNaturalOrdering, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectNaturalOrdering)
