//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/io/swagger/annotations/AuthorizationScope.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_IoSwaggerAnnotationsAuthorizationScope")
#ifdef RESTRICT_IoSwaggerAnnotationsAuthorizationScope
#define INCLUDE_ALL_IoSwaggerAnnotationsAuthorizationScope 0
#else
#define INCLUDE_ALL_IoSwaggerAnnotationsAuthorizationScope 1
#endif
#undef RESTRICT_IoSwaggerAnnotationsAuthorizationScope

#if !defined (IoSwaggerAnnotationsAuthorizationScope_) && (INCLUDE_ALL_IoSwaggerAnnotationsAuthorizationScope || defined(INCLUDE_IoSwaggerAnnotationsAuthorizationScope))
#define IoSwaggerAnnotationsAuthorizationScope_

#define RESTRICT_JavaLangAnnotationAnnotation 1
#define INCLUDE_JavaLangAnnotationAnnotation 1
#include "java/lang/annotation/Annotation.h"

@class IOSClass;

@protocol IoSwaggerAnnotationsAuthorizationScope < JavaLangAnnotationAnnotation >

@property (readonly) NSString *scope;
@property (readonly) NSString *description__;

@end

@interface IoSwaggerAnnotationsAuthorizationScope : NSObject < IoSwaggerAnnotationsAuthorizationScope > {
 @public
  NSString *scope_;
  NSString *description___;
}

@end

J2OBJC_EMPTY_STATIC_INIT(IoSwaggerAnnotationsAuthorizationScope)

FOUNDATION_EXPORT id<IoSwaggerAnnotationsAuthorizationScope> create_IoSwaggerAnnotationsAuthorizationScope(NSString *description__, NSString *scope);

J2OBJC_TYPE_LITERAL_HEADER(IoSwaggerAnnotationsAuthorizationScope)

#endif

#pragma pop_macro("INCLUDE_ALL_IoSwaggerAnnotationsAuthorizationScope")
