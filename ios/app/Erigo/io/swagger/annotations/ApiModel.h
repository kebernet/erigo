//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/io/swagger/annotations/ApiModel.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_IoSwaggerAnnotationsApiModel")
#ifdef RESTRICT_IoSwaggerAnnotationsApiModel
#define INCLUDE_ALL_IoSwaggerAnnotationsApiModel 0
#else
#define INCLUDE_ALL_IoSwaggerAnnotationsApiModel 1
#endif
#undef RESTRICT_IoSwaggerAnnotationsApiModel

#if !defined (IoSwaggerAnnotationsApiModel_) && (INCLUDE_ALL_IoSwaggerAnnotationsApiModel || defined(INCLUDE_IoSwaggerAnnotationsApiModel))
#define IoSwaggerAnnotationsApiModel_

#define RESTRICT_JavaLangAnnotationAnnotation 1
#define INCLUDE_JavaLangAnnotationAnnotation 1
#include "java/lang/annotation/Annotation.h"

@class IOSClass;
@class IOSObjectArray;

@protocol IoSwaggerAnnotationsApiModel < JavaLangAnnotationAnnotation >

@property (readonly) NSString *value;
@property (readonly) NSString *description__;
@property (readonly) IOSClass *parent;
@property (readonly) NSString *discriminator;
@property (readonly) IOSObjectArray *subTypes;
@property (readonly) NSString *reference;

@end

@interface IoSwaggerAnnotationsApiModel : NSObject < IoSwaggerAnnotationsApiModel > {
 @public
  NSString *value_;
  NSString *description___;
  IOSClass *parent_;
  NSString *discriminator_;
  IOSObjectArray *subTypes_;
  NSString *reference_;
}

@end

J2OBJC_EMPTY_STATIC_INIT(IoSwaggerAnnotationsApiModel)

FOUNDATION_EXPORT id<IoSwaggerAnnotationsApiModel> create_IoSwaggerAnnotationsApiModel(NSString *description__, NSString *discriminator, IOSClass *parent, NSString *reference, IOSObjectArray *subTypes, NSString *value);

J2OBJC_TYPE_LITERAL_HEADER(IoSwaggerAnnotationsApiModel)

#endif

#pragma pop_macro("INCLUDE_ALL_IoSwaggerAnnotationsApiModel")
