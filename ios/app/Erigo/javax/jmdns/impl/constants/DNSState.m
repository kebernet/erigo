//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/impl/constants/DNSState.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "javax/jmdns/impl/constants/DNSState.h"

@class JavaxJmdnsImplConstantsDNSState_StateClass;

@interface JavaxJmdnsImplConstantsDNSState () {
 @public
  NSString *_name_;
  JavaxJmdnsImplConstantsDNSState_StateClass *_state_;
}

@end

J2OBJC_FIELD_SETTER(JavaxJmdnsImplConstantsDNSState, _name_, NSString *)
J2OBJC_FIELD_SETTER(JavaxJmdnsImplConstantsDNSState, _state_, JavaxJmdnsImplConstantsDNSState_StateClass *)

__attribute__((unused)) static void JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(JavaxJmdnsImplConstantsDNSState *self, NSString *name, JavaxJmdnsImplConstantsDNSState_StateClass *state, NSString *__name, jint __ordinal);

__attribute__((unused)) static JavaxJmdnsImplConstantsDNSState *new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(NSString *name, JavaxJmdnsImplConstantsDNSState_StateClass *state, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

typedef NS_ENUM(NSUInteger, JavaxJmdnsImplConstantsDNSState_StateClass_Enum) {
  JavaxJmdnsImplConstantsDNSState_StateClass_Enum_probing = 0,
  JavaxJmdnsImplConstantsDNSState_StateClass_Enum_announcing = 1,
  JavaxJmdnsImplConstantsDNSState_StateClass_Enum_announced = 2,
  JavaxJmdnsImplConstantsDNSState_StateClass_Enum_canceling = 3,
  JavaxJmdnsImplConstantsDNSState_StateClass_Enum_canceled = 4,
  JavaxJmdnsImplConstantsDNSState_StateClass_Enum_closing = 5,
  JavaxJmdnsImplConstantsDNSState_StateClass_Enum_closed = 6,
};

@interface JavaxJmdnsImplConstantsDNSState_StateClass : JavaLangEnum < NSCopying >

+ (IOSObjectArray *)values;

+ (JavaxJmdnsImplConstantsDNSState_StateClass *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(JavaxJmdnsImplConstantsDNSState_StateClass)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_values_[];

inline JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_get_probing();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSState_StateClass, probing)

inline JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_get_announcing();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSState_StateClass, announcing)

inline JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_get_announced();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSState_StateClass, announced)

inline JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_get_canceling();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSState_StateClass, canceling)

inline JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_get_canceled();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSState_StateClass, canceled)

inline JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_get_closing();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSState_StateClass, closing)

inline JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_get_closed();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSState_StateClass, closed)

__attribute__((unused)) static void JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(JavaxJmdnsImplConstantsDNSState_StateClass *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static JavaxJmdnsImplConstantsDNSState_StateClass *new_JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

__attribute__((unused)) static IOSObjectArray *JavaxJmdnsImplConstantsDNSState_StateClass_values();

__attribute__((unused)) static JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(JavaxJmdnsImplConstantsDNSState_StateClass)

J2OBJC_INITIALIZED_DEFN(JavaxJmdnsImplConstantsDNSState)

JavaxJmdnsImplConstantsDNSState *JavaxJmdnsImplConstantsDNSState_values_[12];

@implementation JavaxJmdnsImplConstantsDNSState

- (NSString *)description {
  return _name_;
}

- (JavaxJmdnsImplConstantsDNSState *)advance {
  switch ([self ordinal]) {
    case JavaxJmdnsImplConstantsDNSState_Enum_PROBING_1:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, PROBING_2);
    case JavaxJmdnsImplConstantsDNSState_Enum_PROBING_2:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, PROBING_3);
    case JavaxJmdnsImplConstantsDNSState_Enum_PROBING_3:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, ANNOUNCING_1);
    case JavaxJmdnsImplConstantsDNSState_Enum_ANNOUNCING_1:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, ANNOUNCING_2);
    case JavaxJmdnsImplConstantsDNSState_Enum_ANNOUNCING_2:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, ANNOUNCED);
    case JavaxJmdnsImplConstantsDNSState_Enum_ANNOUNCED:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, ANNOUNCED);
    case JavaxJmdnsImplConstantsDNSState_Enum_CANCELING_1:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELING_2);
    case JavaxJmdnsImplConstantsDNSState_Enum_CANCELING_2:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELING_3);
    case JavaxJmdnsImplConstantsDNSState_Enum_CANCELING_3:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELED);
    case JavaxJmdnsImplConstantsDNSState_Enum_CANCELED:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELED);
    case JavaxJmdnsImplConstantsDNSState_Enum_CLOSING:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, CLOSED);
    case JavaxJmdnsImplConstantsDNSState_Enum_CLOSED:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, CLOSED);
    default:
    return self;
  }
}

- (JavaxJmdnsImplConstantsDNSState *)revert {
  switch ([self ordinal]) {
    case JavaxJmdnsImplConstantsDNSState_Enum_PROBING_1:
    case JavaxJmdnsImplConstantsDNSState_Enum_PROBING_2:
    case JavaxJmdnsImplConstantsDNSState_Enum_PROBING_3:
    case JavaxJmdnsImplConstantsDNSState_Enum_ANNOUNCING_1:
    case JavaxJmdnsImplConstantsDNSState_Enum_ANNOUNCING_2:
    case JavaxJmdnsImplConstantsDNSState_Enum_ANNOUNCED:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, PROBING_1);
    case JavaxJmdnsImplConstantsDNSState_Enum_CANCELING_1:
    case JavaxJmdnsImplConstantsDNSState_Enum_CANCELING_2:
    case JavaxJmdnsImplConstantsDNSState_Enum_CANCELING_3:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELING_1);
    case JavaxJmdnsImplConstantsDNSState_Enum_CANCELED:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELED);
    case JavaxJmdnsImplConstantsDNSState_Enum_CLOSING:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, CLOSING);
    case JavaxJmdnsImplConstantsDNSState_Enum_CLOSED:
    return JreEnum(JavaxJmdnsImplConstantsDNSState, CLOSED);
    default:
    return self;
  }
}

- (jboolean)isProbing {
  return _state_ == JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, probing);
}

- (jboolean)isAnnouncing {
  return _state_ == JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, announcing);
}

- (jboolean)isAnnounced {
  return _state_ == JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, announced);
}

- (jboolean)isCanceling {
  return _state_ == JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, canceling);
}

- (jboolean)isCanceled {
  return _state_ == JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, canceled);
}

- (jboolean)isClosing {
  return _state_ == JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, closing);
}

- (jboolean)isClosed {
  return _state_ == JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, closed);
}

+ (IOSObjectArray *)values {
  return JavaxJmdnsImplConstantsDNSState_values();
}

+ (JavaxJmdnsImplConstantsDNSState *)valueOfWithNSString:(NSString *)name {
  return JavaxJmdnsImplConstantsDNSState_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x11, 0, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplConstantsDNSState;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplConstantsDNSState;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LJavaxJmdnsImplConstantsDNSState;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplConstantsDNSState;", 0x9, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(description);
  methods[1].selector = @selector(advance);
  methods[2].selector = @selector(revert);
  methods[3].selector = @selector(isProbing);
  methods[4].selector = @selector(isAnnouncing);
  methods[5].selector = @selector(isAnnounced);
  methods[6].selector = @selector(isCanceling);
  methods[7].selector = @selector(isCanceled);
  methods[8].selector = @selector(isClosing);
  methods[9].selector = @selector(isClosed);
  methods[10].selector = @selector(values);
  methods[11].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PROBING_1", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "PROBING_2", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "PROBING_3", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "ANNOUNCING_1", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "ANNOUNCING_2", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "ANNOUNCED", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "CANCELING_1", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "CANCELING_2", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
    { "CANCELING_3", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 11, -1, -1 },
    { "CANCELED", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 12, -1, -1 },
    { "CLOSING", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 13, -1, -1 },
    { "CLOSED", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x4019, -1, 14, -1, -1 },
    { "_name_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_state_", "LJavaxJmdnsImplConstantsDNSState_StateClass;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "toString", "valueOf", "LNSString;", &JreEnum(JavaxJmdnsImplConstantsDNSState, PROBING_1), &JreEnum(JavaxJmdnsImplConstantsDNSState, PROBING_2), &JreEnum(JavaxJmdnsImplConstantsDNSState, PROBING_3), &JreEnum(JavaxJmdnsImplConstantsDNSState, ANNOUNCING_1), &JreEnum(JavaxJmdnsImplConstantsDNSState, ANNOUNCING_2), &JreEnum(JavaxJmdnsImplConstantsDNSState, ANNOUNCED), &JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELING_1), &JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELING_2), &JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELING_3), &JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELED), &JreEnum(JavaxJmdnsImplConstantsDNSState, CLOSING), &JreEnum(JavaxJmdnsImplConstantsDNSState, CLOSED), "LJavaxJmdnsImplConstantsDNSState_StateClass;", "Ljava/lang/Enum<Ljavax/jmdns/impl/constants/DNSState;>;" };
  static const J2ObjcClassInfo _JavaxJmdnsImplConstantsDNSState = { "DNSState", "javax.jmdns.impl.constants", ptrTable, methods, fields, 7, 0x4011, 12, 14, -1, 15, -1, 16, -1 };
  return &_JavaxJmdnsImplConstantsDNSState;
}

+ (void)initialize {
  if (self == [JavaxJmdnsImplConstantsDNSState class]) {
    JreEnum(JavaxJmdnsImplConstantsDNSState, PROBING_1) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"probing 1", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, probing), @"PROBING_1", 0);
    JreEnum(JavaxJmdnsImplConstantsDNSState, PROBING_2) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"probing 2", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, probing), @"PROBING_2", 1);
    JreEnum(JavaxJmdnsImplConstantsDNSState, PROBING_3) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"probing 3", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, probing), @"PROBING_3", 2);
    JreEnum(JavaxJmdnsImplConstantsDNSState, ANNOUNCING_1) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"announcing 1", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, announcing), @"ANNOUNCING_1", 3);
    JreEnum(JavaxJmdnsImplConstantsDNSState, ANNOUNCING_2) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"announcing 2", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, announcing), @"ANNOUNCING_2", 4);
    JreEnum(JavaxJmdnsImplConstantsDNSState, ANNOUNCED) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"announced", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, announced), @"ANNOUNCED", 5);
    JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELING_1) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"canceling 1", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, canceling), @"CANCELING_1", 6);
    JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELING_2) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"canceling 2", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, canceling), @"CANCELING_2", 7);
    JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELING_3) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"canceling 3", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, canceling), @"CANCELING_3", 8);
    JreEnum(JavaxJmdnsImplConstantsDNSState, CANCELED) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"canceled", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, canceled), @"CANCELED", 9);
    JreEnum(JavaxJmdnsImplConstantsDNSState, CLOSING) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"closing", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, closing), @"CLOSING", 10);
    JreEnum(JavaxJmdnsImplConstantsDNSState, CLOSED) = new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(@"closed", JreLoadEnum(JavaxJmdnsImplConstantsDNSState_StateClass, closed), @"CLOSED", 11);
    J2OBJC_SET_INITIALIZED(JavaxJmdnsImplConstantsDNSState)
  }
}

@end

void JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(JavaxJmdnsImplConstantsDNSState *self, NSString *name, JavaxJmdnsImplConstantsDNSState_StateClass *state, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  self->_name_ = name;
  self->_state_ = state;
}

JavaxJmdnsImplConstantsDNSState *new_JavaxJmdnsImplConstantsDNSState_initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_(NSString *name, JavaxJmdnsImplConstantsDNSState_StateClass *state, NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(JavaxJmdnsImplConstantsDNSState, initWithNSString_withJavaxJmdnsImplConstantsDNSState_StateClass_withNSString_withInt_, name, state, __name, __ordinal)
}

IOSObjectArray *JavaxJmdnsImplConstantsDNSState_values() {
  JavaxJmdnsImplConstantsDNSState_initialize();
  return [IOSObjectArray arrayWithObjects:JavaxJmdnsImplConstantsDNSState_values_ count:12 type:JavaxJmdnsImplConstantsDNSState_class_()];
}

JavaxJmdnsImplConstantsDNSState *JavaxJmdnsImplConstantsDNSState_valueOfWithNSString_(NSString *name) {
  JavaxJmdnsImplConstantsDNSState_initialize();
  for (int i = 0; i < 12; i++) {
    JavaxJmdnsImplConstantsDNSState *e = JavaxJmdnsImplConstantsDNSState_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

JavaxJmdnsImplConstantsDNSState *JavaxJmdnsImplConstantsDNSState_fromOrdinal(NSUInteger ordinal) {
  JavaxJmdnsImplConstantsDNSState_initialize();
  if (ordinal >= 12) {
    return nil;
  }
  return JavaxJmdnsImplConstantsDNSState_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxJmdnsImplConstantsDNSState)

J2OBJC_INITIALIZED_DEFN(JavaxJmdnsImplConstantsDNSState_StateClass)

JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_values_[7];

@implementation JavaxJmdnsImplConstantsDNSState_StateClass

+ (IOSObjectArray *)values {
  return JavaxJmdnsImplConstantsDNSState_StateClass_values();
}

+ (JavaxJmdnsImplConstantsDNSState_StateClass *)valueOfWithNSString:(NSString *)name {
  return JavaxJmdnsImplConstantsDNSState_StateClass_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LJavaxJmdnsImplConstantsDNSState_StateClass;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplConstantsDNSState_StateClass;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "probing", "LJavaxJmdnsImplConstantsDNSState_StateClass;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "announcing", "LJavaxJmdnsImplConstantsDNSState_StateClass;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "announced", "LJavaxJmdnsImplConstantsDNSState_StateClass;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "canceling", "LJavaxJmdnsImplConstantsDNSState_StateClass;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "canceled", "LJavaxJmdnsImplConstantsDNSState_StateClass;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "closing", "LJavaxJmdnsImplConstantsDNSState_StateClass;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "closed", "LJavaxJmdnsImplConstantsDNSState_StateClass;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, probing), &JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, announcing), &JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, announced), &JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, canceling), &JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, canceled), &JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, closing), &JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, closed), "LJavaxJmdnsImplConstantsDNSState;", "Ljava/lang/Enum<Ljavax/jmdns/impl/constants/DNSState$StateClass;>;" };
  static const J2ObjcClassInfo _JavaxJmdnsImplConstantsDNSState_StateClass = { "StateClass", "javax.jmdns.impl.constants", ptrTable, methods, fields, 7, 0x401a, 2, 7, 9, -1, -1, 10, -1 };
  return &_JavaxJmdnsImplConstantsDNSState_StateClass;
}

+ (void)initialize {
  if (self == [JavaxJmdnsImplConstantsDNSState_StateClass class]) {
    JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, probing) = new_JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(@"probing", 0);
    JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, announcing) = new_JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(@"announcing", 1);
    JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, announced) = new_JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(@"announced", 2);
    JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, canceling) = new_JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(@"canceling", 3);
    JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, canceled) = new_JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(@"canceled", 4);
    JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, closing) = new_JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(@"closing", 5);
    JreEnum(JavaxJmdnsImplConstantsDNSState_StateClass, closed) = new_JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(@"closed", 6);
    J2OBJC_SET_INITIALIZED(JavaxJmdnsImplConstantsDNSState_StateClass)
  }
}

@end

void JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(JavaxJmdnsImplConstantsDNSState_StateClass *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

JavaxJmdnsImplConstantsDNSState_StateClass *new_JavaxJmdnsImplConstantsDNSState_StateClass_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(JavaxJmdnsImplConstantsDNSState_StateClass, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *JavaxJmdnsImplConstantsDNSState_StateClass_values() {
  JavaxJmdnsImplConstantsDNSState_StateClass_initialize();
  return [IOSObjectArray arrayWithObjects:JavaxJmdnsImplConstantsDNSState_StateClass_values_ count:7 type:JavaxJmdnsImplConstantsDNSState_StateClass_class_()];
}

JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_valueOfWithNSString_(NSString *name) {
  JavaxJmdnsImplConstantsDNSState_StateClass_initialize();
  for (int i = 0; i < 7; i++) {
    JavaxJmdnsImplConstantsDNSState_StateClass *e = JavaxJmdnsImplConstantsDNSState_StateClass_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

JavaxJmdnsImplConstantsDNSState_StateClass *JavaxJmdnsImplConstantsDNSState_StateClass_fromOrdinal(NSUInteger ordinal) {
  JavaxJmdnsImplConstantsDNSState_StateClass_initialize();
  if (ordinal >= 7) {
    return nil;
  }
  return JavaxJmdnsImplConstantsDNSState_StateClass_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxJmdnsImplConstantsDNSState_StateClass)
