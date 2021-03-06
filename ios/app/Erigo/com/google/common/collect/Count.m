//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/Count.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/collect/Count.h"
#include "java/lang/Integer.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonCollectCount () {
 @public
  jint value_;
}

@end

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectCount__Annotations$0();

@implementation ComGoogleCommonCollectCount

- (instancetype)initWithInt:(jint)value {
  ComGoogleCommonCollectCount_initWithInt_(self, value);
  return self;
}

- (jint)get {
  return value_;
}

- (void)addWithInt:(jint)delta {
  value_ += delta;
}

- (jint)addAndGetWithInt:(jint)delta {
  return value_ += delta;
}

- (void)setWithInt:(jint)newValue {
  value_ = newValue;
}

- (jint)getAndSetWithInt:(jint)newValue {
  jint result = value_;
  value_ = newValue;
  return result;
}

- (NSUInteger)hash {
  return value_;
}

- (jboolean)isEqual:(id)obj {
  return [obj isKindOfClass:[ComGoogleCommonCollectCount class]] && ((ComGoogleCommonCollectCount *) nil_chk(((ComGoogleCommonCollectCount *) cast_chk(obj, [ComGoogleCommonCollectCount class]))))->value_ == value_;
}

- (NSString *)description {
  return JavaLangInteger_toStringWithInt_(value_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, 8 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(get);
  methods[2].selector = @selector(addWithInt:);
  methods[3].selector = @selector(addAndGetWithInt:);
  methods[4].selector = @selector(setWithInt:);
  methods[5].selector = @selector(getAndSetWithInt:);
  methods[6].selector = @selector(hash);
  methods[7].selector = @selector(isEqual:);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "add", "addAndGet", "set", "getAndSet", "hashCode", "equals", "LNSObject;", (void *)&ComGoogleCommonCollectCount__Annotations$0, "toString" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectCount = { "Count", "com.google.common.collect", ptrTable, methods, fields, 7, 0x10, 9, 1, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonCollectCount;
}

@end

void ComGoogleCommonCollectCount_initWithInt_(ComGoogleCommonCollectCount *self, jint value) {
  NSObject_init(self);
  self->value_ = value;
}

ComGoogleCommonCollectCount *new_ComGoogleCommonCollectCount_initWithInt_(jint value) {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectCount, initWithInt_, value)
}

ComGoogleCommonCollectCount *create_ComGoogleCommonCollectCount_initWithInt_(jint value) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectCount, initWithInt_, value)
}

IOSObjectArray *ComGoogleCommonCollectCount__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectCount)
