//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/net/PercentEscaper.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/escape/UnicodeEscaper.h"
#include "com/google/common/net/PercentEscaper.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"

@interface ComGoogleCommonNetPercentEscaper () {
 @public
  jboolean plusForSpace_;
  IOSBooleanArray *safeOctets_;
}

+ (IOSBooleanArray *)createSafeOctetsWithNSString:(NSString *)safeChars;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonNetPercentEscaper, safeOctets_, IOSBooleanArray *)

inline IOSCharArray *ComGoogleCommonNetPercentEscaper_get_PLUS_SIGN();
static IOSCharArray *ComGoogleCommonNetPercentEscaper_PLUS_SIGN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetPercentEscaper, PLUS_SIGN, IOSCharArray *)

inline IOSCharArray *ComGoogleCommonNetPercentEscaper_get_UPPER_HEX_DIGITS();
static IOSCharArray *ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetPercentEscaper, UPPER_HEX_DIGITS, IOSCharArray *)

__attribute__((unused)) static IOSBooleanArray *ComGoogleCommonNetPercentEscaper_createSafeOctetsWithNSString_(NSString *safeChars);

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonNetPercentEscaper)

@implementation ComGoogleCommonNetPercentEscaper

- (instancetype)initWithNSString:(NSString *)safeChars
                     withBoolean:(jboolean)plusForSpace {
  ComGoogleCommonNetPercentEscaper_initWithNSString_withBoolean_(self, safeChars, plusForSpace);
  return self;
}

+ (IOSBooleanArray *)createSafeOctetsWithNSString:(NSString *)safeChars {
  return ComGoogleCommonNetPercentEscaper_createSafeOctetsWithNSString_(safeChars);
}

- (jint)nextEscapeIndexWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                        withInt:(jint)index
                                        withInt:(jint)end {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(csq);
  for (; index < end; index++) {
    jchar c = [((id<JavaLangCharSequence>) nil_chk(csq)) charAtWithInt:index];
    if (c >= ((IOSBooleanArray *) nil_chk(safeOctets_))->size_ || !IOSBooleanArray_Get(safeOctets_, c)) {
      break;
    }
  }
  return index;
}

- (NSString *)escapeWithNSString:(NSString *)s {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(s);
  jint slen = [((NSString *) nil_chk(s)) java_length];
  for (jint index = 0; index < slen; index++) {
    jchar c = [s charAtWithInt:index];
    if (c >= ((IOSBooleanArray *) nil_chk(safeOctets_))->size_ || !IOSBooleanArray_Get(safeOctets_, c)) {
      return [self escapeSlowWithNSString:s withInt:index];
    }
  }
  return s;
}

- (IOSCharArray *)escapeWithInt:(jint)cp {
  if (cp < ((IOSBooleanArray *) nil_chk(safeOctets_))->size_ && IOSBooleanArray_Get(safeOctets_, cp)) {
    return nil;
  }
  else if (cp == ' ' && plusForSpace_) {
    return ComGoogleCommonNetPercentEscaper_PLUS_SIGN;
  }
  else if (cp <= (jint) 0x7F) {
    IOSCharArray *dest = [IOSCharArray newArrayWithLength:3];
    *IOSCharArray_GetRef(dest, 0) = '%';
    *IOSCharArray_GetRef(dest, 2) = IOSCharArray_Get(nil_chk(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS), cp & (jint) 0xF);
    *IOSCharArray_GetRef(dest, 1) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, JreURShift32(cp, 4));
    return dest;
  }
  else if (cp <= (jint) 0x7ff) {
    IOSCharArray *dest = [IOSCharArray newArrayWithLength:6];
    *IOSCharArray_GetRef(dest, 0) = '%';
    *IOSCharArray_GetRef(dest, 3) = '%';
    *IOSCharArray_GetRef(dest, 5) = IOSCharArray_Get(nil_chk(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS), cp & (jint) 0xF);
    JreURShiftAssignInt(&cp, 4);
    *IOSCharArray_GetRef(dest, 4) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, (jint) 0x8 | (cp & (jint) 0x3));
    JreURShiftAssignInt(&cp, 2);
    *IOSCharArray_GetRef(dest, 2) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, cp & (jint) 0xF);
    JreURShiftAssignInt(&cp, 4);
    *IOSCharArray_GetRef(dest, 1) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, (jint) 0xC | cp);
    return dest;
  }
  else if (cp <= (jint) 0xffff) {
    IOSCharArray *dest = [IOSCharArray newArrayWithLength:9];
    *IOSCharArray_GetRef(dest, 0) = '%';
    *IOSCharArray_GetRef(dest, 1) = 'E';
    *IOSCharArray_GetRef(dest, 3) = '%';
    *IOSCharArray_GetRef(dest, 6) = '%';
    *IOSCharArray_GetRef(dest, 8) = IOSCharArray_Get(nil_chk(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS), cp & (jint) 0xF);
    JreURShiftAssignInt(&cp, 4);
    *IOSCharArray_GetRef(dest, 7) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, (jint) 0x8 | (cp & (jint) 0x3));
    JreURShiftAssignInt(&cp, 2);
    *IOSCharArray_GetRef(dest, 5) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, cp & (jint) 0xF);
    JreURShiftAssignInt(&cp, 4);
    *IOSCharArray_GetRef(dest, 4) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, (jint) 0x8 | (cp & (jint) 0x3));
    JreURShiftAssignInt(&cp, 2);
    *IOSCharArray_GetRef(dest, 2) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, cp);
    return dest;
  }
  else if (cp <= (jint) 0x10ffff) {
    IOSCharArray *dest = [IOSCharArray newArrayWithLength:12];
    *IOSCharArray_GetRef(dest, 0) = '%';
    *IOSCharArray_GetRef(dest, 1) = 'F';
    *IOSCharArray_GetRef(dest, 3) = '%';
    *IOSCharArray_GetRef(dest, 6) = '%';
    *IOSCharArray_GetRef(dest, 9) = '%';
    *IOSCharArray_GetRef(dest, 11) = IOSCharArray_Get(nil_chk(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS), cp & (jint) 0xF);
    JreURShiftAssignInt(&cp, 4);
    *IOSCharArray_GetRef(dest, 10) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, (jint) 0x8 | (cp & (jint) 0x3));
    JreURShiftAssignInt(&cp, 2);
    *IOSCharArray_GetRef(dest, 8) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, cp & (jint) 0xF);
    JreURShiftAssignInt(&cp, 4);
    *IOSCharArray_GetRef(dest, 7) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, (jint) 0x8 | (cp & (jint) 0x3));
    JreURShiftAssignInt(&cp, 2);
    *IOSCharArray_GetRef(dest, 5) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, cp & (jint) 0xF);
    JreURShiftAssignInt(&cp, 4);
    *IOSCharArray_GetRef(dest, 4) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, (jint) 0x8 | (cp & (jint) 0x3));
    JreURShiftAssignInt(&cp, 2);
    *IOSCharArray_GetRef(dest, 2) = IOSCharArray_Get(ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS, cp & (jint) 0x7);
    return dest;
  }
  else {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Invalid unicode character value ", cp));
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "[Z", 0xa, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "[C", 0x4, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withBoolean:);
  methods[1].selector = @selector(createSafeOctetsWithNSString:);
  methods[2].selector = @selector(nextEscapeIndexWithJavaLangCharSequence:withInt:withInt:);
  methods[3].selector = @selector(escapeWithNSString:);
  methods[4].selector = @selector(escapeWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PLUS_SIGN", "[C", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "UPPER_HEX_DIGITS", "[C", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "plusForSpace_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "safeOctets_", "[Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;Z", "createSafeOctets", "LNSString;", "nextEscapeIndex", "LJavaLangCharSequence;II", "escape", "I", &ComGoogleCommonNetPercentEscaper_PLUS_SIGN, &ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS };
  static const J2ObjcClassInfo _ComGoogleCommonNetPercentEscaper = { "PercentEscaper", "com.google.common.net", ptrTable, methods, fields, 7, 0x11, 5, 4, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonNetPercentEscaper;
}

+ (void)initialize {
  if (self == [ComGoogleCommonNetPercentEscaper class]) {
    ComGoogleCommonNetPercentEscaper_PLUS_SIGN = [IOSCharArray newArrayWithChars:(jchar[]){ '+' } count:1];
    ComGoogleCommonNetPercentEscaper_UPPER_HEX_DIGITS = [@"0123456789ABCDEF" java_toCharArray];
    J2OBJC_SET_INITIALIZED(ComGoogleCommonNetPercentEscaper)
  }
}

@end

void ComGoogleCommonNetPercentEscaper_initWithNSString_withBoolean_(ComGoogleCommonNetPercentEscaper *self, NSString *safeChars, jboolean plusForSpace) {
  ComGoogleCommonEscapeUnicodeEscaper_init(self);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(safeChars);
  if ([((NSString *) nil_chk(safeChars)) java_matches:@".*[0-9A-Za-z].*"]) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Alphanumeric characters are always 'safe' and should not be explicitly specified");
  }
  (void) JreStrAppendStrong(&safeChars, "$", @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
  if (plusForSpace && [safeChars java_contains:@" "]) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"plusForSpace cannot be specified when space is a 'safe' character");
  }
  self->plusForSpace_ = plusForSpace;
  self->safeOctets_ = ComGoogleCommonNetPercentEscaper_createSafeOctetsWithNSString_(safeChars);
}

ComGoogleCommonNetPercentEscaper *new_ComGoogleCommonNetPercentEscaper_initWithNSString_withBoolean_(NSString *safeChars, jboolean plusForSpace) {
  J2OBJC_NEW_IMPL(ComGoogleCommonNetPercentEscaper, initWithNSString_withBoolean_, safeChars, plusForSpace)
}

ComGoogleCommonNetPercentEscaper *create_ComGoogleCommonNetPercentEscaper_initWithNSString_withBoolean_(NSString *safeChars, jboolean plusForSpace) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonNetPercentEscaper, initWithNSString_withBoolean_, safeChars, plusForSpace)
}

IOSBooleanArray *ComGoogleCommonNetPercentEscaper_createSafeOctetsWithNSString_(NSString *safeChars) {
  ComGoogleCommonNetPercentEscaper_initialize();
  jint maxChar = -1;
  IOSCharArray *safeCharArray = [((NSString *) nil_chk(safeChars)) java_toCharArray];
  {
    IOSCharArray *a__ = safeCharArray;
    jchar const *b__ = ((IOSCharArray *) nil_chk(a__))->buffer_;
    jchar const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jchar c = *b__++;
      maxChar = JavaLangMath_maxWithInt_withInt_(c, maxChar);
    }
  }
  IOSBooleanArray *octets = [IOSBooleanArray newArrayWithLength:maxChar + 1];
  {
    IOSCharArray *a__ = safeCharArray;
    jchar const *b__ = ((IOSCharArray *) nil_chk(a__))->buffer_;
    jchar const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jchar c = *b__++;
      *IOSBooleanArray_GetRef(octets, c) = true;
    }
  }
  return octets;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonNetPercentEscaper)
