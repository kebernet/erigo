//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/impl/constants/DNSRecordClass.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxJmdnsImplConstantsDNSRecordClass")
#ifdef RESTRICT_JavaxJmdnsImplConstantsDNSRecordClass
#define INCLUDE_ALL_JavaxJmdnsImplConstantsDNSRecordClass 0
#else
#define INCLUDE_ALL_JavaxJmdnsImplConstantsDNSRecordClass 1
#endif
#undef RESTRICT_JavaxJmdnsImplConstantsDNSRecordClass

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxJmdnsImplConstantsDNSRecordClass_) && (INCLUDE_ALL_JavaxJmdnsImplConstantsDNSRecordClass || defined(INCLUDE_JavaxJmdnsImplConstantsDNSRecordClass))
#define JavaxJmdnsImplConstantsDNSRecordClass_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, JavaxJmdnsImplConstantsDNSRecordClass_Enum) {
  JavaxJmdnsImplConstantsDNSRecordClass_Enum_CLASS_UNKNOWN = 0,
  JavaxJmdnsImplConstantsDNSRecordClass_Enum_CLASS_IN = 1,
  JavaxJmdnsImplConstantsDNSRecordClass_Enum_CLASS_CS = 2,
  JavaxJmdnsImplConstantsDNSRecordClass_Enum_CLASS_CH = 3,
  JavaxJmdnsImplConstantsDNSRecordClass_Enum_CLASS_HS = 4,
  JavaxJmdnsImplConstantsDNSRecordClass_Enum_CLASS_NONE = 5,
  JavaxJmdnsImplConstantsDNSRecordClass_Enum_CLASS_ANY = 6,
};

@interface JavaxJmdnsImplConstantsDNSRecordClass : JavaLangEnum < NSCopying >

#pragma mark Public

+ (JavaxJmdnsImplConstantsDNSRecordClass *)classForIndexWithInt:(jint)index;

+ (JavaxJmdnsImplConstantsDNSRecordClass *)classForNameWithNSString:(NSString *)name;

- (NSString *)externalName;

- (jint)indexValue;

- (jboolean)isUniqueWithInt:(jint)index;

- (NSString *)description;

+ (JavaxJmdnsImplConstantsDNSRecordClass *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(JavaxJmdnsImplConstantsDNSRecordClass)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_values_[];

inline JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_get_CLASS_UNKNOWN();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_UNKNOWN)

inline JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_get_CLASS_IN();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_IN)

inline JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_get_CLASS_CS();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_CS)

inline JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_get_CLASS_CH();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_CH)

inline JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_get_CLASS_HS();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_HS)

inline JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_get_CLASS_NONE();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_NONE)

inline JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_get_CLASS_ANY();
J2OBJC_ENUM_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_ANY)

inline jint JavaxJmdnsImplConstantsDNSRecordClass_get_CLASS_MASK();
#define JavaxJmdnsImplConstantsDNSRecordClass_CLASS_MASK 32767
J2OBJC_STATIC_FIELD_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_MASK, jint)

inline jint JavaxJmdnsImplConstantsDNSRecordClass_get_CLASS_UNIQUE();
#define JavaxJmdnsImplConstantsDNSRecordClass_CLASS_UNIQUE 32768
J2OBJC_STATIC_FIELD_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, CLASS_UNIQUE, jint)

inline jboolean JavaxJmdnsImplConstantsDNSRecordClass_get_UNIQUE();
#define JavaxJmdnsImplConstantsDNSRecordClass_UNIQUE true
J2OBJC_STATIC_FIELD_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, UNIQUE, jboolean)

inline jboolean JavaxJmdnsImplConstantsDNSRecordClass_get_NOT_UNIQUE();
#define JavaxJmdnsImplConstantsDNSRecordClass_NOT_UNIQUE false
J2OBJC_STATIC_FIELD_CONSTANT(JavaxJmdnsImplConstantsDNSRecordClass, NOT_UNIQUE, jboolean)

FOUNDATION_EXPORT JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_classForNameWithNSString_(NSString *name);

FOUNDATION_EXPORT JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_classForIndexWithInt_(jint index);

FOUNDATION_EXPORT IOSObjectArray *JavaxJmdnsImplConstantsDNSRecordClass_values();

FOUNDATION_EXPORT JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT JavaxJmdnsImplConstantsDNSRecordClass *JavaxJmdnsImplConstantsDNSRecordClass_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(JavaxJmdnsImplConstantsDNSRecordClass)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxJmdnsImplConstantsDNSRecordClass")