//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/errorprone/annotations/MustBeClosed.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/errorprone/annotations/MustBeClosed.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Target.h"

@interface ComGoogleErrorproneAnnotationsMustBeClosed : NSObject

@end

__attribute__((unused)) static IOSObjectArray *ComGoogleErrorproneAnnotationsMustBeClosed__Annotations$0();

@implementation ComGoogleErrorproneAnnotationsMustBeClosed

+ (const J2ObjcClassInfo *)__metadata {
  static const void *ptrTable[] = { (void *)&ComGoogleErrorproneAnnotationsMustBeClosed__Annotations$0 };
  static const J2ObjcClassInfo _ComGoogleErrorproneAnnotationsMustBeClosed = { "MustBeClosed", "com.google.errorprone.annotations", ptrTable, NULL, NULL, 7, 0x2609, 0, 0, -1, -1, -1, -1, 0 };
  return &_ComGoogleErrorproneAnnotationsMustBeClosed;
}

@end

IOSObjectArray *ComGoogleErrorproneAnnotationsMustBeClosed__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, CONSTRUCTOR), JreLoadEnum(JavaLangAnnotationElementType, METHOD) } count:2 type:JavaLangAnnotationElementType_class_()]) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleErrorproneAnnotationsMustBeClosed)
