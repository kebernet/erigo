//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/UsingToStringOrdering.java
//

#include "J2ObjC_source.h"
#include "com/google/common/collect/Ordering.h"
#include "com/google/common/collect/UsingToStringOrdering.h"

@interface ComGoogleCommonCollectUsingToStringOrdering ()

- (id)readResolve;

- (instancetype)init;

@end

inline jlong ComGoogleCommonCollectUsingToStringOrdering_get_serialVersionUID();
#define ComGoogleCommonCollectUsingToStringOrdering_serialVersionUID 0LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonCollectUsingToStringOrdering, serialVersionUID, jlong)

__attribute__((unused)) static void ComGoogleCommonCollectUsingToStringOrdering_init(ComGoogleCommonCollectUsingToStringOrdering *self);

__attribute__((unused)) static ComGoogleCommonCollectUsingToStringOrdering *new_ComGoogleCommonCollectUsingToStringOrdering_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectUsingToStringOrdering *create_ComGoogleCommonCollectUsingToStringOrdering_init();

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectUsingToStringOrdering)

ComGoogleCommonCollectUsingToStringOrdering *ComGoogleCommonCollectUsingToStringOrdering_INSTANCE;

@implementation ComGoogleCommonCollectUsingToStringOrdering

- (jint)compareWithId:(id)left
               withId:(id)right {
  return [((NSString *) nil_chk([nil_chk(left) description])) compareToWithId:[nil_chk(right) description]];
}

- (id)readResolve {
  return ComGoogleCommonCollectUsingToStringOrdering_INSTANCE;
}

- (NSString *)description {
  return @"Ordering.usingToString()";
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCollectUsingToStringOrdering_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(compareWithId:withId:);
  methods[1].selector = @selector(readResolve);
  methods[2].selector = @selector(description);
  methods[3].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LComGoogleCommonCollectUsingToStringOrdering;", .constantValue.asLong = 0, 0x18, -1, 3, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonCollectUsingToStringOrdering_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "compare", "LNSObject;LNSObject;", "toString", &ComGoogleCommonCollectUsingToStringOrdering_INSTANCE, "Lcom/google/common/collect/Ordering<Ljava/lang/Object;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectUsingToStringOrdering = { "UsingToStringOrdering", "com.google.common.collect", ptrTable, methods, fields, 7, 0x10, 4, 2, -1, -1, -1, 4, -1 };
  return &_ComGoogleCommonCollectUsingToStringOrdering;
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectUsingToStringOrdering class]) {
    ComGoogleCommonCollectUsingToStringOrdering_INSTANCE = new_ComGoogleCommonCollectUsingToStringOrdering_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectUsingToStringOrdering)
  }
}

@end

void ComGoogleCommonCollectUsingToStringOrdering_init(ComGoogleCommonCollectUsingToStringOrdering *self) {
  ComGoogleCommonCollectOrdering_init(self);
}

ComGoogleCommonCollectUsingToStringOrdering *new_ComGoogleCommonCollectUsingToStringOrdering_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectUsingToStringOrdering, init)
}

ComGoogleCommonCollectUsingToStringOrdering *create_ComGoogleCommonCollectUsingToStringOrdering_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectUsingToStringOrdering, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectUsingToStringOrdering)
