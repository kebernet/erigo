//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/primitives/UnsignedInts.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/primitives/Ints.h"
#include "com/google/common/primitives/ParseRequest.h"
#include "com/google/common/primitives/UnsignedInts.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Comparator.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"

@interface ComGoogleCommonPrimitivesUnsignedInts ()

- (instancetype)init;

@end

__attribute__((unused)) static void ComGoogleCommonPrimitivesUnsignedInts_init(ComGoogleCommonPrimitivesUnsignedInts *self);

__attribute__((unused)) static ComGoogleCommonPrimitivesUnsignedInts *new_ComGoogleCommonPrimitivesUnsignedInts_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonPrimitivesUnsignedInts *create_ComGoogleCommonPrimitivesUnsignedInts_init();

__attribute__((unused)) static void ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_initWithNSString_withInt_(ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator *new_ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation ComGoogleCommonPrimitivesUnsignedInts

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonPrimitivesUnsignedInts_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)flipWithInt:(jint)value {
  return ComGoogleCommonPrimitivesUnsignedInts_flipWithInt_(value);
}

+ (jint)compareWithInt:(jint)a
               withInt:(jint)b {
  return ComGoogleCommonPrimitivesUnsignedInts_compareWithInt_withInt_(a, b);
}

+ (jlong)toLongWithInt:(jint)value {
  return ComGoogleCommonPrimitivesUnsignedInts_toLongWithInt_(value);
}

+ (jint)checkedCastWithLong:(jlong)value {
  return ComGoogleCommonPrimitivesUnsignedInts_checkedCastWithLong_(value);
}

+ (jint)saturatedCastWithLong:(jlong)value {
  return ComGoogleCommonPrimitivesUnsignedInts_saturatedCastWithLong_(value);
}

+ (jint)minWithIntArray:(IOSIntArray *)array {
  return ComGoogleCommonPrimitivesUnsignedInts_minWithIntArray_(array);
}

+ (jint)maxWithIntArray:(IOSIntArray *)array {
  return ComGoogleCommonPrimitivesUnsignedInts_maxWithIntArray_(array);
}

+ (NSString *)joinWithNSString:(NSString *)separator
                  withIntArray:(IOSIntArray *)array {
  return ComGoogleCommonPrimitivesUnsignedInts_joinWithNSString_withIntArray_(separator, array);
}

+ (id<JavaUtilComparator>)lexicographicalComparator {
  return ComGoogleCommonPrimitivesUnsignedInts_lexicographicalComparator();
}

+ (jint)divideWithInt:(jint)dividend
              withInt:(jint)divisor {
  return ComGoogleCommonPrimitivesUnsignedInts_divideWithInt_withInt_(dividend, divisor);
}

+ (jint)remainderWithInt:(jint)dividend
                 withInt:(jint)divisor {
  return ComGoogleCommonPrimitivesUnsignedInts_remainderWithInt_withInt_(dividend, divisor);
}

+ (jint)decodeWithNSString:(NSString *)stringValue {
  return ComGoogleCommonPrimitivesUnsignedInts_decodeWithNSString_(stringValue);
}

+ (jint)parseUnsignedIntWithNSString:(NSString *)s {
  return ComGoogleCommonPrimitivesUnsignedInts_parseUnsignedIntWithNSString_(s);
}

+ (jint)parseUnsignedIntWithNSString:(NSString *)string
                             withInt:(jint)radix {
  return ComGoogleCommonPrimitivesUnsignedInts_parseUnsignedIntWithNSString_withInt_(string, radix);
}

+ (NSString *)toStringWithInt:(jint)x {
  return ComGoogleCommonPrimitivesUnsignedInts_toStringWithInt_(x);
}

+ (NSString *)toStringWithInt:(jint)x
                      withInt:(jint)radix {
  return ComGoogleCommonPrimitivesUnsignedInts_toStringWithInt_withInt_(x, radix);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 4, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 7, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x89, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x89, 10, 9, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x89, 11, 12, -1, -1, -1, -1 },
    { NULL, "LJavaUtilComparator;", 0x9, -1, -1, -1, 13, -1, -1 },
    { NULL, "I", 0x9, 14, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 15, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 16, 17, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 18, 17, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 18, 19, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 20, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 20, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(flipWithInt:);
  methods[2].selector = @selector(compareWithInt:withInt:);
  methods[3].selector = @selector(toLongWithInt:);
  methods[4].selector = @selector(checkedCastWithLong:);
  methods[5].selector = @selector(saturatedCastWithLong:);
  methods[6].selector = @selector(minWithIntArray:);
  methods[7].selector = @selector(maxWithIntArray:);
  methods[8].selector = @selector(joinWithNSString:withIntArray:);
  methods[9].selector = @selector(lexicographicalComparator);
  methods[10].selector = @selector(divideWithInt:withInt:);
  methods[11].selector = @selector(remainderWithInt:withInt:);
  methods[12].selector = @selector(decodeWithNSString:);
  methods[13].selector = @selector(parseUnsignedIntWithNSString:);
  methods[14].selector = @selector(parseUnsignedIntWithNSString:withInt:);
  methods[15].selector = @selector(toStringWithInt:);
  methods[16].selector = @selector(toStringWithInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INT_MASK", "J", .constantValue.asLong = ComGoogleCommonPrimitivesUnsignedInts_INT_MASK, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "flip", "I", "compare", "II", "toLong", "checkedCast", "J", "saturatedCast", "min", "[I", "max", "join", "LNSString;[I", "()Ljava/util/Comparator<[I>;", "divide", "remainder", "decode", "LNSString;", "parseUnsignedInt", "LNSString;I", "toString", "LComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator;" };
  static const J2ObjcClassInfo _ComGoogleCommonPrimitivesUnsignedInts = { "UnsignedInts", "com.google.common.primitives", ptrTable, methods, fields, 7, 0x11, 17, 1, -1, 21, -1, -1, -1 };
  return &_ComGoogleCommonPrimitivesUnsignedInts;
}

@end

void ComGoogleCommonPrimitivesUnsignedInts_init(ComGoogleCommonPrimitivesUnsignedInts *self) {
  NSObject_init(self);
}

ComGoogleCommonPrimitivesUnsignedInts *new_ComGoogleCommonPrimitivesUnsignedInts_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonPrimitivesUnsignedInts, init)
}

ComGoogleCommonPrimitivesUnsignedInts *create_ComGoogleCommonPrimitivesUnsignedInts_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonPrimitivesUnsignedInts, init)
}

jint ComGoogleCommonPrimitivesUnsignedInts_flipWithInt_(jint value) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  return value ^ JavaLangInteger_MIN_VALUE;
}

jint ComGoogleCommonPrimitivesUnsignedInts_compareWithInt_withInt_(jint a, jint b) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  return ComGoogleCommonPrimitivesInts_compareWithInt_withInt_(ComGoogleCommonPrimitivesUnsignedInts_flipWithInt_(a), ComGoogleCommonPrimitivesUnsignedInts_flipWithInt_(b));
}

jlong ComGoogleCommonPrimitivesUnsignedInts_toLongWithInt_(jint value) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  return value & ComGoogleCommonPrimitivesUnsignedInts_INT_MASK;
}

jint ComGoogleCommonPrimitivesUnsignedInts_checkedCastWithLong_(jlong value) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withLong_((JreRShift64(value, JavaLangInteger_SIZE)) == 0, @"out of range: %s", value);
  return (jint) value;
}

jint ComGoogleCommonPrimitivesUnsignedInts_saturatedCastWithLong_(jlong value) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  if (value <= 0) {
    return 0;
  }
  else if (value >= (JreLShift64(1LL, 32))) {
    return -1;
  }
  else {
    return (jint) value;
  }
}

jint ComGoogleCommonPrimitivesUnsignedInts_minWithIntArray_(IOSIntArray *array) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_(((IOSIntArray *) nil_chk(array))->size_ > 0);
  jint min = ComGoogleCommonPrimitivesUnsignedInts_flipWithInt_(IOSIntArray_Get(array, 0));
  for (jint i = 1; i < array->size_; i++) {
    jint next = ComGoogleCommonPrimitivesUnsignedInts_flipWithInt_(IOSIntArray_Get(array, i));
    if (next < min) {
      min = next;
    }
  }
  return ComGoogleCommonPrimitivesUnsignedInts_flipWithInt_(min);
}

jint ComGoogleCommonPrimitivesUnsignedInts_maxWithIntArray_(IOSIntArray *array) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_(((IOSIntArray *) nil_chk(array))->size_ > 0);
  jint max = ComGoogleCommonPrimitivesUnsignedInts_flipWithInt_(IOSIntArray_Get(array, 0));
  for (jint i = 1; i < array->size_; i++) {
    jint next = ComGoogleCommonPrimitivesUnsignedInts_flipWithInt_(IOSIntArray_Get(array, i));
    if (next > max) {
      max = next;
    }
  }
  return ComGoogleCommonPrimitivesUnsignedInts_flipWithInt_(max);
}

NSString *ComGoogleCommonPrimitivesUnsignedInts_joinWithNSString_withIntArray_(NSString *separator, IOSIntArray *array) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(separator);
  if (((IOSIntArray *) nil_chk(array))->size_ == 0) {
    return @"";
  }
  JavaLangStringBuilder *builder = new_JavaLangStringBuilder_initWithInt_(array->size_ * 5);
  (void) [builder appendWithNSString:ComGoogleCommonPrimitivesUnsignedInts_toStringWithInt_(IOSIntArray_Get(array, 0))];
  for (jint i = 1; i < array->size_; i++) {
    (void) [((JavaLangStringBuilder *) nil_chk([builder appendWithNSString:separator])) appendWithNSString:ComGoogleCommonPrimitivesUnsignedInts_toStringWithInt_(IOSIntArray_Get(array, i))];
  }
  return [builder description];
}

id<JavaUtilComparator> ComGoogleCommonPrimitivesUnsignedInts_lexicographicalComparator() {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  return JreLoadEnum(ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator, INSTANCE);
}

jint ComGoogleCommonPrimitivesUnsignedInts_divideWithInt_withInt_(jint dividend, jint divisor) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  return (jint) (ComGoogleCommonPrimitivesUnsignedInts_toLongWithInt_(dividend) / ComGoogleCommonPrimitivesUnsignedInts_toLongWithInt_(divisor));
}

jint ComGoogleCommonPrimitivesUnsignedInts_remainderWithInt_withInt_(jint dividend, jint divisor) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  return (jint) (ComGoogleCommonPrimitivesUnsignedInts_toLongWithInt_(dividend) % ComGoogleCommonPrimitivesUnsignedInts_toLongWithInt_(divisor));
}

jint ComGoogleCommonPrimitivesUnsignedInts_decodeWithNSString_(NSString *stringValue) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  ComGoogleCommonPrimitivesParseRequest *request = ComGoogleCommonPrimitivesParseRequest_fromStringWithNSString_(stringValue);
  @try {
    return ComGoogleCommonPrimitivesUnsignedInts_parseUnsignedIntWithNSString_withInt_(((ComGoogleCommonPrimitivesParseRequest *) nil_chk(request))->rawValue_, request->radix_);
  }
  @catch (JavaLangNumberFormatException *e) {
    JavaLangNumberFormatException *decodeException = new_JavaLangNumberFormatException_initWithNSString_(JreStrcat("$$", @"Error parsing value: ", stringValue));
    (void) [decodeException initCauseWithNSException:e];
    @throw decodeException;
  }
}

jint ComGoogleCommonPrimitivesUnsignedInts_parseUnsignedIntWithNSString_(NSString *s) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  return ComGoogleCommonPrimitivesUnsignedInts_parseUnsignedIntWithNSString_withInt_(s, 10);
}

jint ComGoogleCommonPrimitivesUnsignedInts_parseUnsignedIntWithNSString_withInt_(NSString *string, jint radix) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(string);
  jlong result = JavaLangLong_parseLongWithNSString_withInt_(string, radix);
  if ((result & ComGoogleCommonPrimitivesUnsignedInts_INT_MASK) != result) {
    @throw new_JavaLangNumberFormatException_initWithNSString_(JreStrcat("$$$I$", @"Input ", string, @" in base ", radix, @" is not in the range of an unsigned integer"));
  }
  return (jint) result;
}

NSString *ComGoogleCommonPrimitivesUnsignedInts_toStringWithInt_(jint x) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  return ComGoogleCommonPrimitivesUnsignedInts_toStringWithInt_withInt_(x, 10);
}

NSString *ComGoogleCommonPrimitivesUnsignedInts_toStringWithInt_withInt_(jint x, jint radix) {
  ComGoogleCommonPrimitivesUnsignedInts_initialize();
  jlong asLong = x & ComGoogleCommonPrimitivesUnsignedInts_INT_MASK;
  return JavaLangLong_toStringWithLong_withInt_(asLong, radix);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonPrimitivesUnsignedInts)

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator)

ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator *ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_values_[1];

@implementation ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator

- (jint)compareWithId:(IOSIntArray *)left
               withId:(IOSIntArray *)right {
  jint minLength = JavaLangMath_minWithInt_withInt_(((IOSIntArray *) nil_chk(left))->size_, ((IOSIntArray *) nil_chk(right))->size_);
  for (jint i = 0; i < minLength; i++) {
    if (IOSIntArray_Get(left, i) != IOSIntArray_Get(right, i)) {
      return ComGoogleCommonPrimitivesUnsignedInts_compareWithInt_withInt_(IOSIntArray_Get(left, i), IOSIntArray_Get(right, i));
    }
  }
  return left->size_ - right->size_;
}

- (NSString *)description {
  return @"UnsignedInts.lexicographicalComparator()";
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (IOSObjectArray *)values {
  return ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_values();
}

+ (ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator *)valueOfWithNSString:(NSString *)name {
  return ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "[LComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator;", 0x9, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(compareWithId:withId:);
  methods[1].selector = @selector(description);
  methods[2].selector = @selector(values);
  methods[3].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "compare", "[I[I", "toString", "valueOf", "LNSString;", &JreEnum(ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator, INSTANCE), "LComGoogleCommonPrimitivesUnsignedInts;", "Ljava/lang/Enum<Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;>;Ljava/util/Comparator<[I>;" };
  static const J2ObjcClassInfo _ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator = { "LexicographicalComparator", "com.google.common.primitives", ptrTable, methods, fields, 7, 0x4018, 4, 1, 6, -1, -1, 7, -1 };
  return &_ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator;
}

+ (void)initialize {
  if (self == [ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator class]) {
    JreEnum(ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator, INSTANCE) = new_ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_initWithNSString_withInt_(@"INSTANCE", 0);
    J2OBJC_SET_INITIALIZED(ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator)
  }
}

@end

void ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_initWithNSString_withInt_(ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator *new_ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_values() {
  ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_initialize();
  return [IOSObjectArray arrayWithObjects:ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_values_ count:1 type:ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_class_()];
}

ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator *ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_valueOfWithNSString_(NSString *name) {
  ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_initialize();
  for (int i = 0; i < 1; i++) {
    ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator *e = ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator *ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_fromOrdinal(NSUInteger ordinal) {
  ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_initialize();
  if (ordinal >= 1) {
    return nil;
  }
  return ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonPrimitivesUnsignedInts_LexicographicalComparator)