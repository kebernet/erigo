//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/impl/ServiceEventImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxJmdnsImplServiceEventImpl")
#ifdef RESTRICT_JavaxJmdnsImplServiceEventImpl
#define INCLUDE_ALL_JavaxJmdnsImplServiceEventImpl 0
#else
#define INCLUDE_ALL_JavaxJmdnsImplServiceEventImpl 1
#endif
#undef RESTRICT_JavaxJmdnsImplServiceEventImpl

#if !defined (JavaxJmdnsImplServiceEventImpl_) && (INCLUDE_ALL_JavaxJmdnsImplServiceEventImpl || defined(INCLUDE_JavaxJmdnsImplServiceEventImpl))
#define JavaxJmdnsImplServiceEventImpl_

#define RESTRICT_JavaxJmdnsServiceEvent 1
#define INCLUDE_JavaxJmdnsServiceEvent 1
#include "javax/jmdns/ServiceEvent.h"

@class JavaxJmdnsImplJmDNSImpl;
@class JavaxJmdnsJmDNS;
@class JavaxJmdnsServiceInfo;

@interface JavaxJmdnsImplServiceEventImpl : JavaxJmdnsServiceEvent

#pragma mark Public

- (instancetype)initWithJavaxJmdnsImplJmDNSImpl:(JavaxJmdnsImplJmDNSImpl *)jmDNS
                                   withNSString:(NSString *)type
                                   withNSString:(NSString *)name
                      withJavaxJmdnsServiceInfo:(JavaxJmdnsServiceInfo *)info;

- (JavaxJmdnsImplServiceEventImpl *)java_clone;

- (JavaxJmdnsJmDNS *)getDNS;

- (JavaxJmdnsServiceInfo *)getInfo;

- (NSString *)getName;

- (NSString *)getType;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxJmdnsImplServiceEventImpl)

FOUNDATION_EXPORT void JavaxJmdnsImplServiceEventImpl_initWithJavaxJmdnsImplJmDNSImpl_withNSString_withNSString_withJavaxJmdnsServiceInfo_(JavaxJmdnsImplServiceEventImpl *self, JavaxJmdnsImplJmDNSImpl *jmDNS, NSString *type, NSString *name, JavaxJmdnsServiceInfo *info);

FOUNDATION_EXPORT JavaxJmdnsImplServiceEventImpl *new_JavaxJmdnsImplServiceEventImpl_initWithJavaxJmdnsImplJmDNSImpl_withNSString_withNSString_withJavaxJmdnsServiceInfo_(JavaxJmdnsImplJmDNSImpl *jmDNS, NSString *type, NSString *name, JavaxJmdnsServiceInfo *info) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxJmdnsImplServiceEventImpl *create_JavaxJmdnsImplServiceEventImpl_initWithJavaxJmdnsImplJmDNSImpl_withNSString_withNSString_withJavaxJmdnsServiceInfo_(JavaxJmdnsImplJmDNSImpl *jmDNS, NSString *type, NSString *name, JavaxJmdnsServiceInfo *info);

J2OBJC_TYPE_LITERAL_HEADER(JavaxJmdnsImplServiceEventImpl)

#endif

#pragma pop_macro("INCLUDE_ALL_JavaxJmdnsImplServiceEventImpl")