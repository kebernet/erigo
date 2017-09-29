//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/impl/constants/DNSRecordClass.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"
#include "javax/jmdns/impl/constants/DNSRecordClass.h"

@interface JavaxJmdnsImplConstantsDNSRecordClass () {
 @public
  NSString *_externalName_;
  jint _index_;
}

@end

J2OBJC_FIELD_SETTER(JavaxJmdnsImplConstantsDNSRecordClass, _externalName_, NSString *)

inline JavaUtilLoggingLogger *JavaxJmdnsImplConstantsDNSRecordClass_get_logger();
inline JavaUtilLoggingLogger *JavaxJmdnsImplConstantsDNSRecordClass_set_logger(JavaUtilLoggingLogger *value);
static JavaUtilLoggingLogger *JavaxJmdnsImplConstantsDNSRecordClass_logger;
J2OBJC_STATIC_FIELD_OBJ(JavaxJmdnsImplConstantsDNSRecordClass, logger, JavaUtilLoggingLogger *)

__attribute__((unused)) static void JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(JavaxJmdnsImplConstantsDNSRecordClass *self, NSString *name, jint index, NSString *__name, jint __ordinal);

__attribute__((unused)) static JavaxJmdnsImplConstantsDNSRecordClass *new_JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(NSString *name, jint index, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(JavaxJmdnsImplConstantsDNSRecordClass)

JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_values_[7];

@implementation JavaxJmdnsImplConstantsDNSRecordClass

- (NSString *)externalName {
  return _externalName_;
}

- (jint)indexValue {
  return _index_;
}

- (jboolean)isUniqueWithInt:(jint)index {
  return (self != JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_UNKNOWN)) && ((index & JavaxJmdnsImplConstantsDNSRecordClass_CLASS_UNIQUE) != 0);
}

+ (JavaxJmdnsImplConstantsDNSRecordClass *)classForNameWithNSString:(NSString *)name {
  return JavaxJmdnsImplConstantsDNSRecordClass_classForNameWithNSString_(name);
}

+ (JavaxJmdnsImplConstantsDNSRecordClass *)classForIndexWithInt:(jint)index {
  return JavaxJmdnsImplConstantsDNSRecordClass_classForIndexWithInt_(index);
}

- (NSString *)description {
  return JreStrcat("$$I", [self name], @" index ", [self indexValue]);
}

+ (IOSObjectArray *)values {
  return JavaxJmdnsImplConstantsDNSRecordClass_values();
}

+ (JavaxJmdnsImplConstantsDNSRecordClass *)valueOfWithNSString:(NSString *)name {
  return JavaxJmdnsImplConstantsDNSRecordClass_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplConstantsDNSRecordClass;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplConstantsDNSRecordClass;", 0x9, 4, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "[LJavaxJmdnsImplConstantsDNSRecordClass;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplConstantsDNSRecordClass;", 0x9, 6, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(externalName);
  methods[1].selector = @selector(indexValue);
  methods[2].selector = @selector(isUniqueWithInt:);
  methods[3].selector = @selector(classForNameWithNSString:);
  methods[4].selector = @selector(classForIndexWithInt:);
  methods[5].selector = @selector(description);
  methods[6].selector = @selector(values);
  methods[7].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "CLASS_UNKNOWN", "LJavaxJmdnsImplConstantsDNSRecordClass;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "CLASS_IN", "LJavaxJmdnsImplConstantsDNSRecordClass;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "CLASS_CS", "LJavaxJmdnsImplConstantsDNSRecordClass;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "CLASS_CH", "LJavaxJmdnsImplConstantsDNSRecordClass;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
    { "CLASS_HS", "LJavaxJmdnsImplConstantsDNSRecordClass;", .constantValue.asLong = 0, 0x4019, -1, 11, -1, -1 },
    { "CLASS_NONE", "LJavaxJmdnsImplConstantsDNSRecordClass;", .constantValue.asLong = 0, 0x4019, -1, 12, -1, -1 },
    { "CLASS_ANY", "LJavaxJmdnsImplConstantsDNSRecordClass;", .constantValue.asLong = 0, 0x4019, -1, 13, -1, -1 },
    { "logger", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0xa, -1, 14, -1, -1 },
    { "CLASS_MASK", "I", .constantValue.asInt = JavaxJmdnsImplConstantsDNSRecordClass_CLASS_MASK, 0x19, -1, -1, -1, -1 },
    { "CLASS_UNIQUE", "I", .constantValue.asInt = JavaxJmdnsImplConstantsDNSRecordClass_CLASS_UNIQUE, 0x19, -1, -1, -1, -1 },
    { "UNIQUE", "Z", .constantValue.asBOOL = JavaxJmdnsImplConstantsDNSRecordClass_UNIQUE, 0x19, -1, -1, -1, -1 },
    { "NOT_UNIQUE", "Z", .constantValue.asBOOL = JavaxJmdnsImplConstantsDNSRecordClass_NOT_UNIQUE, 0x19, -1, -1, -1, -1 },
    { "_externalName_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_index_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "isUnique", "I", "classForName", "LNSString;", "classForIndex", "toString", "valueOf", &JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_UNKNOWN), &JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_IN), &JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_CS), &JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_CH), &JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_HS), &JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_NONE), &JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_ANY), &JavaxJmdnsImplConstantsDNSRecordClass_logger, "Ljava/lang/Enum<Ljavax/jmdns/impl/constants/DNSRecordClass;>;" };
  static const J2ObjcClassInfo _JavaxJmdnsImplConstantsDNSRecordClass = { "DNSRecordClass", "javax.jmdns.impl.constants", ptrTable, methods, fields, 7, 0x4011, 8, 14, -1, -1, -1, 15, -1 };
  return &_JavaxJmdnsImplConstantsDNSRecordClass;
}

+ (void)initialize {
  if (self == [JavaxJmdnsImplConstantsDNSRecordClass class]) {
    JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_UNKNOWN) = new_JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(@"?", 0, @"CLASS_UNKNOWN", 0);
    JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_IN) = new_JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(@"in", 1, @"CLASS_IN", 1);
    JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_CS) = new_JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(@"cs", 2, @"CLASS_CS", 2);
    JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_CH) = new_JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(@"ch", 3, @"CLASS_CH", 3);
    JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_HS) = new_JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(@"hs", 4, @"CLASS_HS", 4);
    JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_NONE) = new_JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(@"none", 254, @"CLASS_NONE", 5);
    JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_ANY) = new_JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(@"any", 255, @"CLASS_ANY", 6);
    JavaxJmdnsImplConstantsDNSRecordClass_logger = JavaUtilLoggingLogger_getLoggerWithNSString_([JavaxJmdnsImplConstantsDNSRecordClass_class_() getName]);
    J2OBJC_SET_INITIALIZED(JavaxJmdnsImplConstantsDNSRecordClass)
  }
}

@end

void JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(JavaxJmdnsImplConstantsDNSRecordClass *self, NSString *name, jint index, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  self->_externalName_ = name;
  self->_index_ = index;
}

JavaxJmdnsImplConstantsDNSRecordClass *new_JavaxJmdnsImplConstantsDNSRecordClass_initWithNSString_withInt_withNSString_withInt_(NSString *name, jint index, NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(JavaxJmdnsImplConstantsDNSRecordClass, initWithNSString_withInt_withNSString_withInt_, name, index, __name, __ordinal)
}

JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_classForNameWithNSString_(NSString *name) {
  JavaxJmdnsImplConstantsDNSRecordClass_initialize();
  if (name != nil) {
    NSString *aName = [name lowercaseString];
    {
      IOSObjectArray *a__ = JavaxJmdnsImplConstantsDNSRecordClass_values();
      JavaxJmdnsImplConstantsDNSRecordClass * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      JavaxJmdnsImplConstantsDNSRecordClass * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        JavaxJmdnsImplConstantsDNSRecordClass *aClass = *b__++;
        if ([((NSString *) nil_chk(((JavaxJmdnsImplConstantsDNSRecordClass *) nil_chk(aClass))->_externalName_)) isEqual:aName]) return aClass;
      }
    }
  }
  [((JavaUtilLoggingLogger *) nil_chk(JavaxJmdnsImplConstantsDNSRecordClass_logger)) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, WARNING) withNSString:JreStrcat("$$", @"Could not find record class for name: ", name)];
  return JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_UNKNOWN);
}

JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_classForIndexWithInt_(jint index) {
  JavaxJmdnsImplConstantsDNSRecordClass_initialize();
  jint maskedIndex = index & JavaxJmdnsImplConstantsDNSRecordClass_CLASS_MASK;
  {
    IOSObjectArray *a__ = JavaxJmdnsImplConstantsDNSRecordClass_values();
    JavaxJmdnsImplConstantsDNSRecordClass * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaxJmdnsImplConstantsDNSRecordClass * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaxJmdnsImplConstantsDNSRecordClass *aClass = *b__++;
      if (((JavaxJmdnsImplConstantsDNSRecordClass *) nil_chk(aClass))->_index_ == maskedIndex) return aClass;
    }
  }
  [((JavaUtilLoggingLogger *) nil_chk(JavaxJmdnsImplConstantsDNSRecordClass_logger)) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, WARNING) withNSString:JreStrcat("$I", @"Could not find record class for index: ", index)];
  return JreEnum(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_UNKNOWN);
}

IOSObjectArray *JavaxJmdnsImplConstantsDNSRecordClass_values() {
  JavaxJmdnsImplConstantsDNSRecordClass_initialize();
  return [IOSObjectArray arrayWithObjects:JavaxJmdnsImplConstantsDNSRecordClass_values_ count:7 type:JavaxJmdnsImplConstantsDNSRecordClass_class_()];
}

JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_valueOfWithNSString_(NSString *name) {
  JavaxJmdnsImplConstantsDNSRecordClass_initialize();
  for (int i = 0; i < 7; i++) {
    JavaxJmdnsImplConstantsDNSRecordClass *e = JavaxJmdnsImplConstantsDNSRecordClass_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_fromOrdinal(NSUInteger ordinal) {
  JavaxJmdnsImplConstantsDNSRecordClass_initialize();
  if (ordinal >= 7) {
    return nil;
  }
  return JavaxJmdnsImplConstantsDNSRecordClass_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxJmdnsImplConstantsDNSRecordClass)