//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/errorprone/annotations/FormatString.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/errorprone/annotations/FormatString.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/Documented.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

@interface ComGoogleErrorproneAnnotationsFormatString : NSObject

@end

__attribute__((unused)) static IOSObjectArray *ComGoogleErrorproneAnnotationsFormatString__Annotations$0();

@implementation ComGoogleErrorproneAnnotationsFormatString

+ (const J2ObjcClassInfo *)__metadata {
  static const void *ptrTable[] = { (void *)&ComGoogleErrorproneAnnotationsFormatString__Annotations$0 };
  static const J2ObjcClassInfo _ComGoogleErrorproneAnnotationsFormatString = { "FormatString", "com.google.errorprone.annotations", ptrTable, NULL, NULL, 7, 0x2609, 0, 0, -1, -1, -1, -1, 0 };
  return &_ComGoogleErrorproneAnnotationsFormatString;
}

@end

IOSObjectArray *ComGoogleErrorproneAnnotationsFormatString__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationDocumented(), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, CLASS)), create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, PARAMETER) } count:1 type:JavaLangAnnotationElementType_class_()]) } count:3 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleErrorproneAnnotationsFormatString)