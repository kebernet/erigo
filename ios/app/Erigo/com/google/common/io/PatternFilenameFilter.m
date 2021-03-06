//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/io/PatternFilenameFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/io/PatternFilenameFilter.h"
#include "java/io/File.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonIoPatternFilenameFilter () {
 @public
  JavaUtilRegexPattern *pattern_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonIoPatternFilenameFilter, pattern_, JavaUtilRegexPattern *)

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonIoPatternFilenameFilter__Annotations$0();

@implementation ComGoogleCommonIoPatternFilenameFilter

- (instancetype)initWithNSString:(NSString *)patternStr {
  ComGoogleCommonIoPatternFilenameFilter_initWithNSString_(self, patternStr);
  return self;
}

- (instancetype)initWithJavaUtilRegexPattern:(JavaUtilRegexPattern *)pattern {
  ComGoogleCommonIoPatternFilenameFilter_initWithJavaUtilRegexPattern_(self, pattern);
  return self;
}

- (jboolean)acceptWithJavaIoFile:(JavaIoFile *)dir
                    withNSString:(NSString *)fileName {
  return [((JavaUtilRegexMatcher *) nil_chk([((JavaUtilRegexPattern *) nil_chk(pattern_)) matcherWithJavaLangCharSequence:fileName])) matches];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, 4 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithJavaUtilRegexPattern:);
  methods[2].selector = @selector(acceptWithJavaIoFile:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "pattern_", "LJavaUtilRegexPattern;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LJavaUtilRegexPattern;", "accept", "LJavaIoFile;LNSString;", (void *)&ComGoogleCommonIoPatternFilenameFilter__Annotations$0 };
  static const J2ObjcClassInfo _ComGoogleCommonIoPatternFilenameFilter = { "PatternFilenameFilter", "com.google.common.io", ptrTable, methods, fields, 7, 0x11, 3, 1, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonIoPatternFilenameFilter;
}

@end

void ComGoogleCommonIoPatternFilenameFilter_initWithNSString_(ComGoogleCommonIoPatternFilenameFilter *self, NSString *patternStr) {
  ComGoogleCommonIoPatternFilenameFilter_initWithJavaUtilRegexPattern_(self, JavaUtilRegexPattern_compileWithNSString_(patternStr));
}

ComGoogleCommonIoPatternFilenameFilter *new_ComGoogleCommonIoPatternFilenameFilter_initWithNSString_(NSString *patternStr) {
  J2OBJC_NEW_IMPL(ComGoogleCommonIoPatternFilenameFilter, initWithNSString_, patternStr)
}

ComGoogleCommonIoPatternFilenameFilter *create_ComGoogleCommonIoPatternFilenameFilter_initWithNSString_(NSString *patternStr) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonIoPatternFilenameFilter, initWithNSString_, patternStr)
}

void ComGoogleCommonIoPatternFilenameFilter_initWithJavaUtilRegexPattern_(ComGoogleCommonIoPatternFilenameFilter *self, JavaUtilRegexPattern *pattern) {
  NSObject_init(self);
  self->pattern_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(pattern);
}

ComGoogleCommonIoPatternFilenameFilter *new_ComGoogleCommonIoPatternFilenameFilter_initWithJavaUtilRegexPattern_(JavaUtilRegexPattern *pattern) {
  J2OBJC_NEW_IMPL(ComGoogleCommonIoPatternFilenameFilter, initWithJavaUtilRegexPattern_, pattern)
}

ComGoogleCommonIoPatternFilenameFilter *create_ComGoogleCommonIoPatternFilenameFilter_initWithJavaUtilRegexPattern_(JavaUtilRegexPattern *pattern) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonIoPatternFilenameFilter, initWithJavaUtilRegexPattern_, pattern)
}

IOSObjectArray *ComGoogleCommonIoPatternFilenameFilter__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonIoPatternFilenameFilter)
