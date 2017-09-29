//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/net/UrlEscapers.java
//

#include "J2ObjC_source.h"
#include "com/google/common/escape/Escaper.h"
#include "com/google/common/net/PercentEscaper.h"
#include "com/google/common/net/UrlEscapers.h"

@interface ComGoogleCommonNetUrlEscapers ()

- (instancetype)init;

@end

inline ComGoogleCommonEscapeEscaper *ComGoogleCommonNetUrlEscapers_get_URL_FORM_PARAMETER_ESCAPER();
static ComGoogleCommonEscapeEscaper *ComGoogleCommonNetUrlEscapers_URL_FORM_PARAMETER_ESCAPER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetUrlEscapers, URL_FORM_PARAMETER_ESCAPER, ComGoogleCommonEscapeEscaper *)

inline ComGoogleCommonEscapeEscaper *ComGoogleCommonNetUrlEscapers_get_URL_PATH_SEGMENT_ESCAPER();
static ComGoogleCommonEscapeEscaper *ComGoogleCommonNetUrlEscapers_URL_PATH_SEGMENT_ESCAPER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetUrlEscapers, URL_PATH_SEGMENT_ESCAPER, ComGoogleCommonEscapeEscaper *)

inline ComGoogleCommonEscapeEscaper *ComGoogleCommonNetUrlEscapers_get_URL_FRAGMENT_ESCAPER();
static ComGoogleCommonEscapeEscaper *ComGoogleCommonNetUrlEscapers_URL_FRAGMENT_ESCAPER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetUrlEscapers, URL_FRAGMENT_ESCAPER, ComGoogleCommonEscapeEscaper *)

__attribute__((unused)) static void ComGoogleCommonNetUrlEscapers_init(ComGoogleCommonNetUrlEscapers *self);

__attribute__((unused)) static ComGoogleCommonNetUrlEscapers *new_ComGoogleCommonNetUrlEscapers_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonNetUrlEscapers *create_ComGoogleCommonNetUrlEscapers_init();

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonNetUrlEscapers)

NSString *ComGoogleCommonNetUrlEscapers_URL_FORM_PARAMETER_OTHER_SAFE_CHARS = @"-_.*";
NSString *ComGoogleCommonNetUrlEscapers_URL_PATH_OTHER_SAFE_CHARS_LACKING_PLUS = @"-._~!$'()*,;&=@:";

@implementation ComGoogleCommonNetUrlEscapers

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonNetUrlEscapers_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ComGoogleCommonEscapeEscaper *)urlFormParameterEscaper {
  return ComGoogleCommonNetUrlEscapers_urlFormParameterEscaper();
}

+ (ComGoogleCommonEscapeEscaper *)urlPathSegmentEscaper {
  return ComGoogleCommonNetUrlEscapers_urlPathSegmentEscaper();
}

+ (ComGoogleCommonEscapeEscaper *)urlFragmentEscaper {
  return ComGoogleCommonNetUrlEscapers_urlFragmentEscaper();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonEscapeEscaper;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonEscapeEscaper;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonEscapeEscaper;", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(urlFormParameterEscaper);
  methods[2].selector = @selector(urlPathSegmentEscaper);
  methods[3].selector = @selector(urlFragmentEscaper);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "URL_FORM_PARAMETER_OTHER_SAFE_CHARS", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 0, -1, -1 },
    { "URL_PATH_OTHER_SAFE_CHARS_LACKING_PLUS", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 1, -1, -1 },
    { "URL_FORM_PARAMETER_ESCAPER", "LComGoogleCommonEscapeEscaper;", .constantValue.asLong = 0, 0x1a, -1, 2, -1, -1 },
    { "URL_PATH_SEGMENT_ESCAPER", "LComGoogleCommonEscapeEscaper;", .constantValue.asLong = 0, 0x1a, -1, 3, -1, -1 },
    { "URL_FRAGMENT_ESCAPER", "LComGoogleCommonEscapeEscaper;", .constantValue.asLong = 0, 0x1a, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { &ComGoogleCommonNetUrlEscapers_URL_FORM_PARAMETER_OTHER_SAFE_CHARS, &ComGoogleCommonNetUrlEscapers_URL_PATH_OTHER_SAFE_CHARS_LACKING_PLUS, &ComGoogleCommonNetUrlEscapers_URL_FORM_PARAMETER_ESCAPER, &ComGoogleCommonNetUrlEscapers_URL_PATH_SEGMENT_ESCAPER, &ComGoogleCommonNetUrlEscapers_URL_FRAGMENT_ESCAPER };
  static const J2ObjcClassInfo _ComGoogleCommonNetUrlEscapers = { "UrlEscapers", "com.google.common.net", ptrTable, methods, fields, 7, 0x11, 4, 5, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonNetUrlEscapers;
}

+ (void)initialize {
  if (self == [ComGoogleCommonNetUrlEscapers class]) {
    ComGoogleCommonNetUrlEscapers_URL_FORM_PARAMETER_ESCAPER = new_ComGoogleCommonNetPercentEscaper_initWithNSString_withBoolean_(ComGoogleCommonNetUrlEscapers_URL_FORM_PARAMETER_OTHER_SAFE_CHARS, true);
    ComGoogleCommonNetUrlEscapers_URL_PATH_SEGMENT_ESCAPER = new_ComGoogleCommonNetPercentEscaper_initWithNSString_withBoolean_(JreStrcat("$C", ComGoogleCommonNetUrlEscapers_URL_PATH_OTHER_SAFE_CHARS_LACKING_PLUS, '+'), false);
    ComGoogleCommonNetUrlEscapers_URL_FRAGMENT_ESCAPER = new_ComGoogleCommonNetPercentEscaper_initWithNSString_withBoolean_(JreStrcat("$$", ComGoogleCommonNetUrlEscapers_URL_PATH_OTHER_SAFE_CHARS_LACKING_PLUS, @"+/?"), false);
    J2OBJC_SET_INITIALIZED(ComGoogleCommonNetUrlEscapers)
  }
}

@end

void ComGoogleCommonNetUrlEscapers_init(ComGoogleCommonNetUrlEscapers *self) {
  NSObject_init(self);
}

ComGoogleCommonNetUrlEscapers *new_ComGoogleCommonNetUrlEscapers_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonNetUrlEscapers, init)
}

ComGoogleCommonNetUrlEscapers *create_ComGoogleCommonNetUrlEscapers_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonNetUrlEscapers, init)
}

ComGoogleCommonEscapeEscaper *ComGoogleCommonNetUrlEscapers_urlFormParameterEscaper() {
  ComGoogleCommonNetUrlEscapers_initialize();
  return ComGoogleCommonNetUrlEscapers_URL_FORM_PARAMETER_ESCAPER;
}

ComGoogleCommonEscapeEscaper *ComGoogleCommonNetUrlEscapers_urlPathSegmentEscaper() {
  ComGoogleCommonNetUrlEscapers_initialize();
  return ComGoogleCommonNetUrlEscapers_URL_PATH_SEGMENT_ESCAPER;
}

ComGoogleCommonEscapeEscaper *ComGoogleCommonNetUrlEscapers_urlFragmentEscaper() {
  ComGoogleCommonNetUrlEscapers_initialize();
  return ComGoogleCommonNetUrlEscapers_URL_FRAGMENT_ESCAPER;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonNetUrlEscapers)