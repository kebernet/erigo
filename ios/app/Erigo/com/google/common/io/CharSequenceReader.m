//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/io/CharSequenceReader.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/io/CharSequenceReader.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Math.h"
#include "java/nio/CharBuffer.h"

@interface ComGoogleCommonIoCharSequenceReader () {
 @public
  id<JavaLangCharSequence> seq_;
  jint pos_;
  jint mark_;
}

- (void)checkOpen;

- (jboolean)hasRemaining;

- (jint)remaining;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonIoCharSequenceReader, seq_, id<JavaLangCharSequence>)

__attribute__((unused)) static void ComGoogleCommonIoCharSequenceReader_checkOpen(ComGoogleCommonIoCharSequenceReader *self);

__attribute__((unused)) static jboolean ComGoogleCommonIoCharSequenceReader_hasRemaining(ComGoogleCommonIoCharSequenceReader *self);

__attribute__((unused)) static jint ComGoogleCommonIoCharSequenceReader_remaining(ComGoogleCommonIoCharSequenceReader *self);

@implementation ComGoogleCommonIoCharSequenceReader

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq {
  ComGoogleCommonIoCharSequenceReader_initWithJavaLangCharSequence_(self, seq);
  return self;
}

- (void)checkOpen {
  ComGoogleCommonIoCharSequenceReader_checkOpen(self);
}

- (jboolean)hasRemaining {
  return ComGoogleCommonIoCharSequenceReader_hasRemaining(self);
}

- (jint)remaining {
  return ComGoogleCommonIoCharSequenceReader_remaining(self);
}

- (jint)readWithJavaNioCharBuffer:(JavaNioCharBuffer *)target {
  @synchronized(self) {
    (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(target);
    ComGoogleCommonIoCharSequenceReader_checkOpen(self);
    if (!ComGoogleCommonIoCharSequenceReader_hasRemaining(self)) {
      return -1;
    }
    jint charsToRead = JavaLangMath_minWithInt_withInt_([((JavaNioCharBuffer *) nil_chk(target)) remaining], ComGoogleCommonIoCharSequenceReader_remaining(self));
    for (jint i = 0; i < charsToRead; i++) {
      (void) [target putWithChar:[((id<JavaLangCharSequence>) nil_chk(seq_)) charAtWithInt:pos_++]];
    }
    return charsToRead;
  }
}

- (jint)read {
  @synchronized(self) {
    ComGoogleCommonIoCharSequenceReader_checkOpen(self);
    return ComGoogleCommonIoCharSequenceReader_hasRemaining(self) ? [((id<JavaLangCharSequence>) nil_chk(seq_)) charAtWithInt:pos_++] : -1;
  }
}

- (jint)readWithCharArray:(IOSCharArray *)cbuf
                  withInt:(jint)off
                  withInt:(jint)len {
  @synchronized(self) {
    ComGoogleCommonBasePreconditions_checkPositionIndexesWithInt_withInt_withInt_(off, off + len, ((IOSCharArray *) nil_chk(cbuf))->size_);
    ComGoogleCommonIoCharSequenceReader_checkOpen(self);
    if (!ComGoogleCommonIoCharSequenceReader_hasRemaining(self)) {
      return -1;
    }
    jint charsToRead = JavaLangMath_minWithInt_withInt_(len, ComGoogleCommonIoCharSequenceReader_remaining(self));
    for (jint i = 0; i < charsToRead; i++) {
      *IOSCharArray_GetRef(cbuf, off + i) = [((id<JavaLangCharSequence>) nil_chk(seq_)) charAtWithInt:pos_++];
    }
    return charsToRead;
  }
}

- (jlong)skipWithLong:(jlong)n {
  @synchronized(self) {
    ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withLong_(n >= 0, @"n (%s) may not be negative", n);
    ComGoogleCommonIoCharSequenceReader_checkOpen(self);
    jint charsToSkip = (jint) JavaLangMath_minWithLong_withLong_(ComGoogleCommonIoCharSequenceReader_remaining(self), n);
    pos_ += charsToSkip;
    return charsToSkip;
  }
}

- (jboolean)ready {
  @synchronized(self) {
    ComGoogleCommonIoCharSequenceReader_checkOpen(self);
    return true;
  }
}

- (jboolean)markSupported {
  return true;
}

- (void)markWithInt:(jint)readAheadLimit {
  @synchronized(self) {
    ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withInt_(readAheadLimit >= 0, @"readAheadLimit (%s) may not be negative", readAheadLimit);
    ComGoogleCommonIoCharSequenceReader_checkOpen(self);
    mark_ = pos_;
  }
}

- (void)reset {
  @synchronized(self) {
    ComGoogleCommonIoCharSequenceReader_checkOpen(self);
    pos_ = mark_;
  }
}

- (void)close {
  @synchronized(self) {
    seq_ = nil;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x21, 2, 3, 1, -1, -1, -1 },
    { NULL, "I", 0x21, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x21, 2, 4, 1, -1, -1, -1 },
    { NULL, "J", 0x21, 5, 6, 1, -1, -1, -1 },
    { NULL, "Z", 0x21, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 7, 8, 1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaLangCharSequence:);
  methods[1].selector = @selector(checkOpen);
  methods[2].selector = @selector(hasRemaining);
  methods[3].selector = @selector(remaining);
  methods[4].selector = @selector(readWithJavaNioCharBuffer:);
  methods[5].selector = @selector(read);
  methods[6].selector = @selector(readWithCharArray:withInt:withInt:);
  methods[7].selector = @selector(skipWithLong:);
  methods[8].selector = @selector(ready);
  methods[9].selector = @selector(markSupported);
  methods[10].selector = @selector(markWithInt:);
  methods[11].selector = @selector(reset);
  methods[12].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "seq_", "LJavaLangCharSequence;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pos_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mark_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangCharSequence;", "LJavaIoIOException;", "read", "LJavaNioCharBuffer;", "[CII", "skip", "J", "mark", "I" };
  static const J2ObjcClassInfo _ComGoogleCommonIoCharSequenceReader = { "CharSequenceReader", "com.google.common.io", ptrTable, methods, fields, 7, 0x10, 13, 3, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonIoCharSequenceReader;
}

@end

void ComGoogleCommonIoCharSequenceReader_initWithJavaLangCharSequence_(ComGoogleCommonIoCharSequenceReader *self, id<JavaLangCharSequence> seq) {
  JavaIoReader_init(self);
  self->seq_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(seq);
}

ComGoogleCommonIoCharSequenceReader *new_ComGoogleCommonIoCharSequenceReader_initWithJavaLangCharSequence_(id<JavaLangCharSequence> seq) {
  J2OBJC_NEW_IMPL(ComGoogleCommonIoCharSequenceReader, initWithJavaLangCharSequence_, seq)
}

ComGoogleCommonIoCharSequenceReader *create_ComGoogleCommonIoCharSequenceReader_initWithJavaLangCharSequence_(id<JavaLangCharSequence> seq) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonIoCharSequenceReader, initWithJavaLangCharSequence_, seq)
}

void ComGoogleCommonIoCharSequenceReader_checkOpen(ComGoogleCommonIoCharSequenceReader *self) {
  if (self->seq_ == nil) {
    @throw new_JavaIoIOException_initWithNSString_(@"reader closed");
  }
}

jboolean ComGoogleCommonIoCharSequenceReader_hasRemaining(ComGoogleCommonIoCharSequenceReader *self) {
  return ComGoogleCommonIoCharSequenceReader_remaining(self) > 0;
}

jint ComGoogleCommonIoCharSequenceReader_remaining(ComGoogleCommonIoCharSequenceReader *self) {
  return [((id<JavaLangCharSequence>) nil_chk(self->seq_)) java_length] - self->pos_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonIoCharSequenceReader)
