//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/primitives/UnsignedLong.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/primitives/Longs.h"
#include "com/google/common/primitives/UnsignedLong.h"
#include "com/google/common/primitives/UnsignedLongs.h"
#include "java/lang/Long.h"
#include "java/lang/annotation/Annotation.h"
#include "java/math/BigInteger.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonPrimitivesUnsignedLong () {
 @public
  jlong value_;
}

- (instancetype)initWithLong:(jlong)value;

@end

inline jlong ComGoogleCommonPrimitivesUnsignedLong_get_UNSIGNED_MASK();
#define ComGoogleCommonPrimitivesUnsignedLong_UNSIGNED_MASK 9223372036854775807LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonPrimitivesUnsignedLong, UNSIGNED_MASK, jlong)

__attribute__((unused)) static void ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(ComGoogleCommonPrimitivesUnsignedLong *self, jlong value);

__attribute__((unused)) static ComGoogleCommonPrimitivesUnsignedLong *new_ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(jlong value) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonPrimitivesUnsignedLong *create_ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(jlong value);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonPrimitivesUnsignedLong__Annotations$0();

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonPrimitivesUnsignedLong)

ComGoogleCommonPrimitivesUnsignedLong *ComGoogleCommonPrimitivesUnsignedLong_ZERO;
ComGoogleCommonPrimitivesUnsignedLong *ComGoogleCommonPrimitivesUnsignedLong_ONE;
ComGoogleCommonPrimitivesUnsignedLong *ComGoogleCommonPrimitivesUnsignedLong_MAX_VALUE;

@implementation ComGoogleCommonPrimitivesUnsignedLong

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)initWithLong:(jlong)value {
  ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(self, value);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ComGoogleCommonPrimitivesUnsignedLong *)fromLongBitsWithLong:(jlong)bits {
  return ComGoogleCommonPrimitivesUnsignedLong_fromLongBitsWithLong_(bits);
}

+ (ComGoogleCommonPrimitivesUnsignedLong *)valueOfWithLong:(jlong)value {
  return ComGoogleCommonPrimitivesUnsignedLong_valueOfWithLong_(value);
}

+ (ComGoogleCommonPrimitivesUnsignedLong *)valueOfWithJavaMathBigInteger:(JavaMathBigInteger *)value {
  return ComGoogleCommonPrimitivesUnsignedLong_valueOfWithJavaMathBigInteger_(value);
}

+ (ComGoogleCommonPrimitivesUnsignedLong *)valueOfWithNSString:(NSString *)string {
  return ComGoogleCommonPrimitivesUnsignedLong_valueOfWithNSString_(string);
}

+ (ComGoogleCommonPrimitivesUnsignedLong *)valueOfWithNSString:(NSString *)string
                                                       withInt:(jint)radix {
  return ComGoogleCommonPrimitivesUnsignedLong_valueOfWithNSString_withInt_(string, radix);
}

- (ComGoogleCommonPrimitivesUnsignedLong *)plusWithComGoogleCommonPrimitivesUnsignedLong:(ComGoogleCommonPrimitivesUnsignedLong *)val {
  return ComGoogleCommonPrimitivesUnsignedLong_fromLongBitsWithLong_(self->value_ + ((ComGoogleCommonPrimitivesUnsignedLong *) nil_chk(ComGoogleCommonBasePreconditions_checkNotNullWithId_(val)))->value_);
}

- (ComGoogleCommonPrimitivesUnsignedLong *)minusWithComGoogleCommonPrimitivesUnsignedLong:(ComGoogleCommonPrimitivesUnsignedLong *)val {
  return ComGoogleCommonPrimitivesUnsignedLong_fromLongBitsWithLong_(self->value_ - ((ComGoogleCommonPrimitivesUnsignedLong *) nil_chk(ComGoogleCommonBasePreconditions_checkNotNullWithId_(val)))->value_);
}

- (ComGoogleCommonPrimitivesUnsignedLong *)timesWithComGoogleCommonPrimitivesUnsignedLong:(ComGoogleCommonPrimitivesUnsignedLong *)val {
  return ComGoogleCommonPrimitivesUnsignedLong_fromLongBitsWithLong_(value_ * ((ComGoogleCommonPrimitivesUnsignedLong *) nil_chk(ComGoogleCommonBasePreconditions_checkNotNullWithId_(val)))->value_);
}

- (ComGoogleCommonPrimitivesUnsignedLong *)dividedByWithComGoogleCommonPrimitivesUnsignedLong:(ComGoogleCommonPrimitivesUnsignedLong *)val {
  return ComGoogleCommonPrimitivesUnsignedLong_fromLongBitsWithLong_(ComGoogleCommonPrimitivesUnsignedLongs_divideWithLong_withLong_(value_, ((ComGoogleCommonPrimitivesUnsignedLong *) nil_chk(ComGoogleCommonBasePreconditions_checkNotNullWithId_(val)))->value_));
}

- (ComGoogleCommonPrimitivesUnsignedLong *)modWithComGoogleCommonPrimitivesUnsignedLong:(ComGoogleCommonPrimitivesUnsignedLong *)val {
  return ComGoogleCommonPrimitivesUnsignedLong_fromLongBitsWithLong_(ComGoogleCommonPrimitivesUnsignedLongs_remainderWithLong_withLong_(value_, ((ComGoogleCommonPrimitivesUnsignedLong *) nil_chk(ComGoogleCommonBasePreconditions_checkNotNullWithId_(val)))->value_));
}

- (jint)intValue {
  return (jint) value_;
}

- (jlong)longLongValue {
  return value_;
}

- (jfloat)floatValue {
  jfloat fValue = (jfloat) (value_ & ComGoogleCommonPrimitivesUnsignedLong_UNSIGNED_MASK);
  if (value_ < 0) {
    JrePlusAssignFloatF(&fValue, 9.223372036854776E18f);
  }
  return fValue;
}

- (jdouble)doubleValue {
  jdouble dValue = (jdouble) (value_ & ComGoogleCommonPrimitivesUnsignedLong_UNSIGNED_MASK);
  if (value_ < 0) {
    JrePlusAssignDoubleD(&dValue, 9.223372036854776E18);
  }
  return dValue;
}

- (JavaMathBigInteger *)bigIntegerValue {
  JavaMathBigInteger *bigInt = JavaMathBigInteger_valueOfWithLong_(value_ & ComGoogleCommonPrimitivesUnsignedLong_UNSIGNED_MASK);
  if (value_ < 0) {
    bigInt = [((JavaMathBigInteger *) nil_chk(bigInt)) setBitWithInt:JavaLangLong_SIZE - 1];
  }
  return bigInt;
}

- (jint)compareToWithId:(ComGoogleCommonPrimitivesUnsignedLong *)o {
  (void) cast_chk(o, [ComGoogleCommonPrimitivesUnsignedLong class]);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(o);
  return ComGoogleCommonPrimitivesUnsignedLongs_compareWithLong_withLong_(value_, ((ComGoogleCommonPrimitivesUnsignedLong *) nil_chk(o))->value_);
}

- (NSUInteger)hash {
  return ComGoogleCommonPrimitivesLongs_hashCodeWithLong_(value_);
}

- (jboolean)isEqual:(id)obj {
  if ([obj isKindOfClass:[ComGoogleCommonPrimitivesUnsignedLong class]]) {
    ComGoogleCommonPrimitivesUnsignedLong *other = (ComGoogleCommonPrimitivesUnsignedLong *) cast_chk(obj, [ComGoogleCommonPrimitivesUnsignedLong class]);
    return value_ == ((ComGoogleCommonPrimitivesUnsignedLong *) nil_chk(other))->value_;
  }
  return false;
}

- (NSString *)description {
  return ComGoogleCommonPrimitivesUnsignedLongs_toStringWithLong_(value_);
}

- (NSString *)toStringWithInt:(jint)radix {
  return ComGoogleCommonPrimitivesUnsignedLongs_toStringWithLong_withInt_(value_, radix);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedLong;", 0x9, 1, 0, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedLong;", 0x9, 2, 0, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedLong;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedLong;", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedLong;", 0x9, 2, 5, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedLong;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedLong;", 0x1, 8, 7, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedLong;", 0x1, 9, 7, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedLong;", 0x1, 10, 7, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedLong;", 0x1, 11, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 12, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 13, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 14, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 16, -1, -1, -1, 17 },
    { NULL, "LNSString;", 0x1, 18, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 18, 19, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithLong:);
  methods[1].selector = @selector(fromLongBitsWithLong:);
  methods[2].selector = @selector(valueOfWithLong:);
  methods[3].selector = @selector(valueOfWithJavaMathBigInteger:);
  methods[4].selector = @selector(valueOfWithNSString:);
  methods[5].selector = @selector(valueOfWithNSString:withInt:);
  methods[6].selector = @selector(plusWithComGoogleCommonPrimitivesUnsignedLong:);
  methods[7].selector = @selector(minusWithComGoogleCommonPrimitivesUnsignedLong:);
  methods[8].selector = @selector(timesWithComGoogleCommonPrimitivesUnsignedLong:);
  methods[9].selector = @selector(dividedByWithComGoogleCommonPrimitivesUnsignedLong:);
  methods[10].selector = @selector(modWithComGoogleCommonPrimitivesUnsignedLong:);
  methods[11].selector = @selector(intValue);
  methods[12].selector = @selector(longLongValue);
  methods[13].selector = @selector(floatValue);
  methods[14].selector = @selector(doubleValue);
  methods[15].selector = @selector(bigIntegerValue);
  methods[16].selector = @selector(compareToWithId:);
  methods[17].selector = @selector(hash);
  methods[18].selector = @selector(isEqual:);
  methods[19].selector = @selector(description);
  methods[20].selector = @selector(toStringWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "UNSIGNED_MASK", "J", .constantValue.asLong = ComGoogleCommonPrimitivesUnsignedLong_UNSIGNED_MASK, 0x1a, -1, -1, -1, -1 },
    { "ZERO", "LComGoogleCommonPrimitivesUnsignedLong;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "ONE", "LComGoogleCommonPrimitivesUnsignedLong;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "MAX_VALUE", "LComGoogleCommonPrimitivesUnsignedLong;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
    { "value_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "J", "fromLongBits", "valueOf", "LJavaMathBigInteger;", "LNSString;", "LNSString;I", "plus", "LComGoogleCommonPrimitivesUnsignedLong;", "minus", "times", "dividedBy", "mod", "longValue", "compareTo", "hashCode", "equals", "LNSObject;", (void *)&ComGoogleCommonPrimitivesUnsignedLong__Annotations$0, "toString", "I", &ComGoogleCommonPrimitivesUnsignedLong_ZERO, &ComGoogleCommonPrimitivesUnsignedLong_ONE, &ComGoogleCommonPrimitivesUnsignedLong_MAX_VALUE, "Ljava/lang/Number;Ljava/lang/Comparable<Lcom/google/common/primitives/UnsignedLong;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _ComGoogleCommonPrimitivesUnsignedLong = { "UnsignedLong", "com.google.common.primitives", ptrTable, methods, fields, 7, 0x11, 21, 5, -1, -1, -1, 23, -1 };
  return &_ComGoogleCommonPrimitivesUnsignedLong;
}

+ (void)initialize {
  if (self == [ComGoogleCommonPrimitivesUnsignedLong class]) {
    ComGoogleCommonPrimitivesUnsignedLong_ZERO = new_ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(0);
    ComGoogleCommonPrimitivesUnsignedLong_ONE = new_ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(1);
    ComGoogleCommonPrimitivesUnsignedLong_MAX_VALUE = new_ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(-1LL);
    J2OBJC_SET_INITIALIZED(ComGoogleCommonPrimitivesUnsignedLong)
  }
}

@end

void ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(ComGoogleCommonPrimitivesUnsignedLong *self, jlong value) {
  NSNumber_init(self);
  self->value_ = value;
}

ComGoogleCommonPrimitivesUnsignedLong *new_ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(jlong value) {
  J2OBJC_NEW_IMPL(ComGoogleCommonPrimitivesUnsignedLong, initWithLong_, value)
}

ComGoogleCommonPrimitivesUnsignedLong *create_ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(jlong value) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonPrimitivesUnsignedLong, initWithLong_, value)
}

ComGoogleCommonPrimitivesUnsignedLong *ComGoogleCommonPrimitivesUnsignedLong_fromLongBitsWithLong_(jlong bits) {
  ComGoogleCommonPrimitivesUnsignedLong_initialize();
  return new_ComGoogleCommonPrimitivesUnsignedLong_initWithLong_(bits);
}

ComGoogleCommonPrimitivesUnsignedLong *ComGoogleCommonPrimitivesUnsignedLong_valueOfWithLong_(jlong value) {
  ComGoogleCommonPrimitivesUnsignedLong_initialize();
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withLong_(value >= 0, @"value (%s) is outside the range for an unsigned long value", value);
  return ComGoogleCommonPrimitivesUnsignedLong_fromLongBitsWithLong_(value);
}

ComGoogleCommonPrimitivesUnsignedLong *ComGoogleCommonPrimitivesUnsignedLong_valueOfWithJavaMathBigInteger_(JavaMathBigInteger *value) {
  ComGoogleCommonPrimitivesUnsignedLong_initialize();
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(value);
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withId_([((JavaMathBigInteger *) nil_chk(value)) signum] >= 0 && [value bitLength] <= JavaLangLong_SIZE, @"value (%s) is outside the range for an unsigned long value", value);
  return ComGoogleCommonPrimitivesUnsignedLong_fromLongBitsWithLong_([value longLongValue]);
}

ComGoogleCommonPrimitivesUnsignedLong *ComGoogleCommonPrimitivesUnsignedLong_valueOfWithNSString_(NSString *string) {
  ComGoogleCommonPrimitivesUnsignedLong_initialize();
  return ComGoogleCommonPrimitivesUnsignedLong_valueOfWithNSString_withInt_(string, 10);
}

ComGoogleCommonPrimitivesUnsignedLong *ComGoogleCommonPrimitivesUnsignedLong_valueOfWithNSString_withInt_(NSString *string, jint radix) {
  ComGoogleCommonPrimitivesUnsignedLong_initialize();
  return ComGoogleCommonPrimitivesUnsignedLong_fromLongBitsWithLong_(ComGoogleCommonPrimitivesUnsignedLongs_parseUnsignedLongWithNSString_withInt_(string, radix));
}

IOSObjectArray *ComGoogleCommonPrimitivesUnsignedLong__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonPrimitivesUnsignedLong)