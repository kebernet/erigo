//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/annotation/meta/TypeQualifier.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxAnnotationMetaTypeQualifier")
#ifdef RESTRICT_JavaxAnnotationMetaTypeQualifier
#define INCLUDE_ALL_JavaxAnnotationMetaTypeQualifier 0
#else
#define INCLUDE_ALL_JavaxAnnotationMetaTypeQualifier 1
#endif
#undef RESTRICT_JavaxAnnotationMetaTypeQualifier

#if !defined (JavaxAnnotationMetaTypeQualifier_) && (INCLUDE_ALL_JavaxAnnotationMetaTypeQualifier || defined(INCLUDE_JavaxAnnotationMetaTypeQualifier))
#define JavaxAnnotationMetaTypeQualifier_

#define RESTRICT_JavaLangAnnotationAnnotation 1
#define INCLUDE_JavaLangAnnotationAnnotation 1
#include "java/lang/annotation/Annotation.h"

@class IOSClass;

@protocol JavaxAnnotationMetaTypeQualifier < JavaLangAnnotationAnnotation >

@property (readonly) IOSClass *applicableTo;

@end

@interface JavaxAnnotationMetaTypeQualifier : NSObject < JavaxAnnotationMetaTypeQualifier > {
 @public
  IOSClass *applicableTo_;
}

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxAnnotationMetaTypeQualifier)

FOUNDATION_EXPORT id<JavaxAnnotationMetaTypeQualifier> create_JavaxAnnotationMetaTypeQualifier(IOSClass *applicableTo);

J2OBJC_TYPE_LITERAL_HEADER(JavaxAnnotationMetaTypeQualifier)

#endif

#pragma pop_macro("INCLUDE_ALL_JavaxAnnotationMetaTypeQualifier")
