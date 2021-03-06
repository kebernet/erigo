//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/io/LineBuffer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/io/LineBuffer.h"
#include "java/lang/StringBuilder.h"

@interface ComGoogleCommonIoLineBuffer () {
 @public
  JavaLangStringBuilder *line_;
  jboolean sawReturn_;
}

- (jboolean)finishLineWithBoolean:(jboolean)sawNewline;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonIoLineBuffer, line_, JavaLangStringBuilder *)

__attribute__((unused)) static jboolean ComGoogleCommonIoLineBuffer_finishLineWithBoolean_(ComGoogleCommonIoLineBuffer *self, jboolean sawNewline);

@implementation ComGoogleCommonIoLineBuffer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonIoLineBuffer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addWithCharArray:(IOSCharArray *)cbuf
                 withInt:(jint)off
                 withInt:(jint)len {
  jint pos = off;
  if (sawReturn_ && len > 0) {
    if (ComGoogleCommonIoLineBuffer_finishLineWithBoolean_(self, IOSCharArray_Get(nil_chk(cbuf), pos) == 0x000a)) {
      pos++;
    }
  }
  jint start = pos;
  for (jint end = off + len; pos < end; pos++) {
    switch (IOSCharArray_Get(nil_chk(cbuf), pos)) {
      case 0x000d:
      (void) [((JavaLangStringBuilder *) nil_chk(line_)) appendWithCharArray:cbuf withInt:start withInt:pos - start];
      sawReturn_ = true;
      if (pos + 1 < end) {
        if (ComGoogleCommonIoLineBuffer_finishLineWithBoolean_(self, IOSCharArray_Get(cbuf, pos + 1) == 0x000a)) {
          pos++;
        }
      }
      start = pos + 1;
      break;
      case 0x000a:
      (void) [((JavaLangStringBuilder *) nil_chk(line_)) appendWithCharArray:cbuf withInt:start withInt:pos - start];
      ComGoogleCommonIoLineBuffer_finishLineWithBoolean_(self, true);
      start = pos + 1;
      break;
      default:
      ;
    }
  }
  (void) [((JavaLangStringBuilder *) nil_chk(line_)) appendWithCharArray:cbuf withInt:start withInt:off + len - start];
}

- (jboolean)finishLineWithBoolean:(jboolean)sawNewline {
  return ComGoogleCommonIoLineBuffer_finishLineWithBoolean_(self, sawNewline);
}

- (void)finish {
  if (sawReturn_ || [((JavaLangStringBuilder *) nil_chk(line_)) java_length] > 0) {
    ComGoogleCommonIoLineBuffer_finishLineWithBoolean_(self, false);
  }
}

- (void)handleLineWithNSString:(NSString *)line
                  withNSString:(NSString *)end {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 0, 1, 2, -1, -1, -1 },
    { NULL, "Z", 0x2, 3, 4, 2, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x404, 5, 6, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithCharArray:withInt:withInt:);
  methods[2].selector = @selector(finishLineWithBoolean:);
  methods[3].selector = @selector(finish);
  methods[4].selector = @selector(handleLineWithNSString:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "line_", "LJavaLangStringBuilder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "sawReturn_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "[CII", "LJavaIoIOException;", "finishLine", "Z", "handleLine", "LNSString;LNSString;" };
  static const J2ObjcClassInfo _ComGoogleCommonIoLineBuffer = { "LineBuffer", "com.google.common.io", ptrTable, methods, fields, 7, 0x400, 5, 2, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonIoLineBuffer;
}

@end

void ComGoogleCommonIoLineBuffer_init(ComGoogleCommonIoLineBuffer *self) {
  NSObject_init(self);
  self->line_ = new_JavaLangStringBuilder_init();
}

jboolean ComGoogleCommonIoLineBuffer_finishLineWithBoolean_(ComGoogleCommonIoLineBuffer *self, jboolean sawNewline) {
  NSString *separator = self->sawReturn_ ? (sawNewline ? @"\x0d\n" : @"\x0d") : (sawNewline ? @"\n" : @"");
  [self handleLineWithNSString:[((JavaLangStringBuilder *) nil_chk(self->line_)) description] withNSString:separator];
  self->line_ = new_JavaLangStringBuilder_init();
  self->sawReturn_ = false;
  return sawNewline;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonIoLineBuffer)
