//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/impl/constants/DNSOperationCode.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "javax/jmdns/impl/constants/DNSOperationCode.h"

@interface JavaxJmdnsImplConstantsDNSOperationCode () {
 @public
  NSString *_externalName_;
  jint _index_;
}

@end

J2OBJC_FIELD_SETTER(JavaxJmdnsImplConstantsDNSOperationCode, _externalName_, NSString *)

__attribute__((unused)) static void JavaxJmdnsImplConstantsDNSOperationCode_initWithNSString_withInt_withNSString_withInt_(JavaxJmdnsImplConstantsDNSOperationCode *self, NSString *name, jint index, NSString *__name, jint __ordinal);

__attribute__((unused)) static JavaxJmdnsImplConstantsDNSOperationCode *new_JavaxJmdnsImplConstantsDNSOperationCode_initWithNSString_withInt_withNSString_withInt_(NSString *name, jint index, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(JavaxJmdnsImplConstantsDNSOperationCode)

JavaxJmdnsImplConstantsDNSOperationCode *JavaxJmdnsImplConstantsDNSOperationCode_values_[6];

@implementation JavaxJmdnsImplConstantsDNSOperationCode

- (NSString *)externalName {
  return _externalName_;
}

- (jint)indexValue {
  return _index_;
}

+ (JavaxJmdnsImplConstantsDNSOperationCode *)operationCodeForFlagsWithInt:(jint)flags {
  return JavaxJmdnsImplConstantsDNSOperationCode_operationCodeForFlagsWithInt_(flags);
}

- (NSString *)description {
  return JreStrcat("$$I", [self name], @" index ", [self indexValue]);
}

+ (IOSObjectArray *)values {
  return JavaxJmdnsImplConstantsDNSOperationCode_values();
}

+ (JavaxJmdnsImplConstantsDNSOperationCode *)valueOfWithNSString:(NSString *)name {
  return JavaxJmdnsImplConstantsDNSOperationCode_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplConstantsDNSOperationCode;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "[LJavaxJmdnsImplConstantsDNSOperationCode;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplConstantsDNSOperationCode;", 0x9, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(externalName);
  methods[1].selector = @selector(indexValue);
  methods[2].selector = @selector(operationCodeForFlagsWithInt:);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(values);
  methods[5].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "Query", "LJavaxJmdnsImplConstantsDNSOperationCode;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "IQuery", "LJavaxJmdnsImplConstantsDNSOperationCode;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "Status", "LJavaxJmdnsImplConstantsDNSOperationCode;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "Unassigned", "LJavaxJmdnsImplConstantsDNSOperationCode;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "Notify", "LJavaxJmdnsImplConstantsDNSOperationCode;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "Update", "LJavaxJmdnsImplConstantsDNSOperationCode;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
    { "OpCode_MASK", "I", .constantValue.asInt = JavaxJmdnsImplConstantsDNSOperationCode_OpCode_MASK, 0x18, -1, -1, -1, -1 },
    { "_externalName_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_index_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "operationCodeForFlags", "I", "toString", "valueOf", "LNSString;", &JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Query), &JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, IQuery), &JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Status), &JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Unassigned), &JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Notify), &JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Update), "Ljava/lang/Enum<Ljavax/jmdns/impl/constants/DNSOperationCode;>;" };
  static const J2ObjcClassInfo _JavaxJmdnsImplConstantsDNSOperationCode = { "DNSOperationCode", "javax.jmdns.impl.constants", ptrTable, methods, fields, 7, 0x4011, 6, 9, -1, -1, -1, 11, -1 };
  return &_JavaxJmdnsImplConstantsDNSOperationCode;
}

+ (void)initialize {
  if (self == [JavaxJmdnsImplConstantsDNSOperationCode class]) {
    JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Query) = new_JavaxJmdnsImplConstantsDNSOperationCode_initWithNSString_withInt_withNSString_withInt_(@"Query", 0, @"Query", 0);
    JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, IQuery) = new_JavaxJmdnsImplConstantsDNSOperationCode_initWithNSString_withInt_withNSString_withInt_(@"Inverse Query", 1, @"IQuery", 1);
    JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Status) = new_JavaxJmdnsImplConstantsDNSOperationCode_initWithNSString_withInt_withNSString_withInt_(@"Status", 2, @"Status", 2);
    JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Unassigned) = new_JavaxJmdnsImplConstantsDNSOperationCode_initWithNSString_withInt_withNSString_withInt_(@"Unassigned", 3, @"Unassigned", 3);
    JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Notify) = new_JavaxJmdnsImplConstantsDNSOperationCode_initWithNSString_withInt_withNSString_withInt_(@"Notify", 4, @"Notify", 4);
    JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Update) = new_JavaxJmdnsImplConstantsDNSOperationCode_initWithNSString_withInt_withNSString_withInt_(@"Update", 5, @"Update", 5);
    J2OBJC_SET_INITIALIZED(JavaxJmdnsImplConstantsDNSOperationCode)
  }
}

@end

void JavaxJmdnsImplConstantsDNSOperationCode_initWithNSString_withInt_withNSString_withInt_(JavaxJmdnsImplConstantsDNSOperationCode *self, NSString *name, jint index, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  self->_externalName_ = name;
  self->_index_ = index;
}

JavaxJmdnsImplConstantsDNSOperationCode *new_JavaxJmdnsImplConstantsDNSOperationCode_initWithNSString_withInt_withNSString_withInt_(NSString *name, jint index, NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(JavaxJmdnsImplConstantsDNSOperationCode, initWithNSString_withInt_withNSString_withInt_, name, index, __name, __ordinal)
}

JavaxJmdnsImplConstantsDNSOperationCode *JavaxJmdnsImplConstantsDNSOperationCode_operationCodeForFlagsWithInt_(jint flags) {
  JavaxJmdnsImplConstantsDNSOperationCode_initialize();
  jint maskedIndex = JreRShift32((flags & JavaxJmdnsImplConstantsDNSOperationCode_OpCode_MASK), 11);
  {
    IOSObjectArray *a__ = JavaxJmdnsImplConstantsDNSOperationCode_values();
    JavaxJmdnsImplConstantsDNSOperationCode * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaxJmdnsImplConstantsDNSOperationCode * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaxJmdnsImplConstantsDNSOperationCode *aCode = *b__++;
      if (((JavaxJmdnsImplConstantsDNSOperationCode *) nil_chk(aCode))->_index_ == maskedIndex) return aCode;
    }
  }
  return JreEnum(JavaxJmdnsImplConstantsDNSOperationCode, Unassigned);
}

IOSObjectArray *JavaxJmdnsImplConstantsDNSOperationCode_values() {
  JavaxJmdnsImplConstantsDNSOperationCode_initialize();
  return [IOSObjectArray arrayWithObjects:JavaxJmdnsImplConstantsDNSOperationCode_values_ count:6 type:JavaxJmdnsImplConstantsDNSOperationCode_class_()];
}

JavaxJmdnsImplConstantsDNSOperationCode *JavaxJmdnsImplConstantsDNSOperationCode_valueOfWithNSString_(NSString *name) {
  JavaxJmdnsImplConstantsDNSOperationCode_initialize();
  for (int i = 0; i < 6; i++) {
    JavaxJmdnsImplConstantsDNSOperationCode *e = JavaxJmdnsImplConstantsDNSOperationCode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

JavaxJmdnsImplConstantsDNSOperationCode *JavaxJmdnsImplConstantsDNSOperationCode_fromOrdinal(NSUInteger ordinal) {
  JavaxJmdnsImplConstantsDNSOperationCode_initialize();
  if (ordinal >= 6) {
    return nil;
  }
  return JavaxJmdnsImplConstantsDNSOperationCode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxJmdnsImplConstantsDNSOperationCode)