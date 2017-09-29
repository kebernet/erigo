//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/xml/XmlEscapers.java
//

#include "J2ObjC_source.h"
#include "com/google/common/escape/Escaper.h"
#include "com/google/common/escape/Escapers.h"
#include "com/google/common/xml/XmlEscapers.h"
#include "java/lang/Character.h"

@interface ComGoogleCommonXmlXmlEscapers ()

- (instancetype)init;

@end

inline jchar ComGoogleCommonXmlXmlEscapers_get_MIN_ASCII_CONTROL_CHAR();
#define ComGoogleCommonXmlXmlEscapers_MIN_ASCII_CONTROL_CHAR 0x0000
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonXmlXmlEscapers, MIN_ASCII_CONTROL_CHAR, jchar)

inline jchar ComGoogleCommonXmlXmlEscapers_get_MAX_ASCII_CONTROL_CHAR();
#define ComGoogleCommonXmlXmlEscapers_MAX_ASCII_CONTROL_CHAR 0x001f
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonXmlXmlEscapers, MAX_ASCII_CONTROL_CHAR, jchar)

inline ComGoogleCommonEscapeEscaper *ComGoogleCommonXmlXmlEscapers_get_XML_ESCAPER();
static ComGoogleCommonEscapeEscaper *ComGoogleCommonXmlXmlEscapers_XML_ESCAPER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonXmlXmlEscapers, XML_ESCAPER, ComGoogleCommonEscapeEscaper *)

inline ComGoogleCommonEscapeEscaper *ComGoogleCommonXmlXmlEscapers_get_XML_CONTENT_ESCAPER();
static ComGoogleCommonEscapeEscaper *ComGoogleCommonXmlXmlEscapers_XML_CONTENT_ESCAPER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonXmlXmlEscapers, XML_CONTENT_ESCAPER, ComGoogleCommonEscapeEscaper *)

inline ComGoogleCommonEscapeEscaper *ComGoogleCommonXmlXmlEscapers_get_XML_ATTRIBUTE_ESCAPER();
static ComGoogleCommonEscapeEscaper *ComGoogleCommonXmlXmlEscapers_XML_ATTRIBUTE_ESCAPER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonXmlXmlEscapers, XML_ATTRIBUTE_ESCAPER, ComGoogleCommonEscapeEscaper *)

__attribute__((unused)) static void ComGoogleCommonXmlXmlEscapers_init(ComGoogleCommonXmlXmlEscapers *self);

__attribute__((unused)) static ComGoogleCommonXmlXmlEscapers *new_ComGoogleCommonXmlXmlEscapers_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonXmlXmlEscapers *create_ComGoogleCommonXmlXmlEscapers_init();

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonXmlXmlEscapers)

@implementation ComGoogleCommonXmlXmlEscapers

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonXmlXmlEscapers_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ComGoogleCommonEscapeEscaper *)xmlContentEscaper {
  return ComGoogleCommonXmlXmlEscapers_xmlContentEscaper();
}

+ (ComGoogleCommonEscapeEscaper *)xmlAttributeEscaper {
  return ComGoogleCommonXmlXmlEscapers_xmlAttributeEscaper();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonEscapeEscaper;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonEscapeEscaper;", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(xmlContentEscaper);
  methods[2].selector = @selector(xmlAttributeEscaper);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MIN_ASCII_CONTROL_CHAR", "C", .constantValue.asUnichar = ComGoogleCommonXmlXmlEscapers_MIN_ASCII_CONTROL_CHAR, 0x1a, -1, -1, -1, -1 },
    { "MAX_ASCII_CONTROL_CHAR", "C", .constantValue.asUnichar = ComGoogleCommonXmlXmlEscapers_MAX_ASCII_CONTROL_CHAR, 0x1a, -1, -1, -1, -1 },
    { "XML_ESCAPER", "LComGoogleCommonEscapeEscaper;", .constantValue.asLong = 0, 0x1a, -1, 0, -1, -1 },
    { "XML_CONTENT_ESCAPER", "LComGoogleCommonEscapeEscaper;", .constantValue.asLong = 0, 0x1a, -1, 1, -1, -1 },
    { "XML_ATTRIBUTE_ESCAPER", "LComGoogleCommonEscapeEscaper;", .constantValue.asLong = 0, 0x1a, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { &ComGoogleCommonXmlXmlEscapers_XML_ESCAPER, &ComGoogleCommonXmlXmlEscapers_XML_CONTENT_ESCAPER, &ComGoogleCommonXmlXmlEscapers_XML_ATTRIBUTE_ESCAPER };
  static const J2ObjcClassInfo _ComGoogleCommonXmlXmlEscapers = { "XmlEscapers", "com.google.common.xml", ptrTable, methods, fields, 7, 0x1, 3, 5, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonXmlXmlEscapers;
}

+ (void)initialize {
  if (self == [ComGoogleCommonXmlXmlEscapers class]) {
    {
      ComGoogleCommonEscapeEscapers_Builder *builder = ComGoogleCommonEscapeEscapers_builder();
      (void) [((ComGoogleCommonEscapeEscapers_Builder *) nil_chk(builder)) setSafeRangeWithChar:JavaLangCharacter_MIN_VALUE withChar:0xfffd];
      (void) [builder setUnsafeReplacementWithNSString:@"\ufffd"];
      for (jchar c = ComGoogleCommonXmlXmlEscapers_MIN_ASCII_CONTROL_CHAR; c <= ComGoogleCommonXmlXmlEscapers_MAX_ASCII_CONTROL_CHAR; c++) {
        if (c != 0x0009 && c != 0x000a && c != 0x000d) {
          (void) [builder addEscapeWithChar:c withNSString:@"\ufffd"];
        }
      }
      (void) [builder addEscapeWithChar:'&' withNSString:@"&amp;"];
      (void) [builder addEscapeWithChar:'<' withNSString:@"&lt;"];
      (void) [builder addEscapeWithChar:'>' withNSString:@"&gt;"];
      ComGoogleCommonXmlXmlEscapers_XML_CONTENT_ESCAPER = [builder build];
      (void) [builder addEscapeWithChar:'\'' withNSString:@"&apos;"];
      (void) [builder addEscapeWithChar:'"' withNSString:@"&quot;"];
      ComGoogleCommonXmlXmlEscapers_XML_ESCAPER = [builder build];
      (void) [builder addEscapeWithChar:0x0009 withNSString:@"&#x9;"];
      (void) [builder addEscapeWithChar:0x000a withNSString:@"&#xA;"];
      (void) [builder addEscapeWithChar:0x000d withNSString:@"&#xD;"];
      ComGoogleCommonXmlXmlEscapers_XML_ATTRIBUTE_ESCAPER = [builder build];
    }
    J2OBJC_SET_INITIALIZED(ComGoogleCommonXmlXmlEscapers)
  }
}

@end

void ComGoogleCommonXmlXmlEscapers_init(ComGoogleCommonXmlXmlEscapers *self) {
  NSObject_init(self);
}

ComGoogleCommonXmlXmlEscapers *new_ComGoogleCommonXmlXmlEscapers_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonXmlXmlEscapers, init)
}

ComGoogleCommonXmlXmlEscapers *create_ComGoogleCommonXmlXmlEscapers_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonXmlXmlEscapers, init)
}

ComGoogleCommonEscapeEscaper *ComGoogleCommonXmlXmlEscapers_xmlContentEscaper() {
  ComGoogleCommonXmlXmlEscapers_initialize();
  return ComGoogleCommonXmlXmlEscapers_XML_CONTENT_ESCAPER;
}

ComGoogleCommonEscapeEscaper *ComGoogleCommonXmlXmlEscapers_xmlAttributeEscaper() {
  ComGoogleCommonXmlXmlEscapers_initialize();
  return ComGoogleCommonXmlXmlEscapers_XML_ATTRIBUTE_ESCAPER;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonXmlXmlEscapers)