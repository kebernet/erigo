//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/ServiceEvent.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxJmdnsServiceEvent")
#ifdef RESTRICT_JavaxJmdnsServiceEvent
#define INCLUDE_ALL_JavaxJmdnsServiceEvent 0
#else
#define INCLUDE_ALL_JavaxJmdnsServiceEvent 1
#endif
#undef RESTRICT_JavaxJmdnsServiceEvent

#if !defined (JavaxJmdnsServiceEvent_) && (INCLUDE_ALL_JavaxJmdnsServiceEvent || defined(INCLUDE_JavaxJmdnsServiceEvent))
#define JavaxJmdnsServiceEvent_

#define RESTRICT_JavaUtilEventObject 1
#define INCLUDE_JavaUtilEventObject 1
#include "java/util/EventObject.h"

@class JavaxJmdnsJmDNS;
@class JavaxJmdnsServiceInfo;

@interface JavaxJmdnsServiceEvent : JavaUtilEventObject < NSCopying >

#pragma mark Public

- (instancetype)initWithId:(id)eventSource;

- (JavaxJmdnsServiceEvent *)java_clone;

- (JavaxJmdnsJmDNS *)getDNS;

- (JavaxJmdnsServiceInfo *)getInfo;

- (NSString *)getName;

- (NSString *)getType;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxJmdnsServiceEvent)

FOUNDATION_EXPORT void JavaxJmdnsServiceEvent_initWithId_(JavaxJmdnsServiceEvent *self, id eventSource);

J2OBJC_TYPE_LITERAL_HEADER(JavaxJmdnsServiceEvent)

#endif

#pragma pop_macro("INCLUDE_ALL_JavaxJmdnsServiceEvent")
