//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/NetworkTopologyEvent.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxJmdnsNetworkTopologyEvent")
#ifdef RESTRICT_JavaxJmdnsNetworkTopologyEvent
#define INCLUDE_ALL_JavaxJmdnsNetworkTopologyEvent 0
#else
#define INCLUDE_ALL_JavaxJmdnsNetworkTopologyEvent 1
#endif
#undef RESTRICT_JavaxJmdnsNetworkTopologyEvent

#if !defined (JavaxJmdnsNetworkTopologyEvent_) && (INCLUDE_ALL_JavaxJmdnsNetworkTopologyEvent || defined(INCLUDE_JavaxJmdnsNetworkTopologyEvent))
#define JavaxJmdnsNetworkTopologyEvent_

#define RESTRICT_JavaUtilEventObject 1
#define INCLUDE_JavaUtilEventObject 1
#include "java/util/EventObject.h"

@class JavaNetInetAddress;
@class JavaxJmdnsJmDNS;

@interface JavaxJmdnsNetworkTopologyEvent : JavaUtilEventObject

#pragma mark Public

- (JavaxJmdnsJmDNS *)getDNS;

- (JavaNetInetAddress *)getInetAddress;

#pragma mark Protected

- (instancetype)initWithId:(id)eventSource;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxJmdnsNetworkTopologyEvent)

FOUNDATION_EXPORT void JavaxJmdnsNetworkTopologyEvent_initWithId_(JavaxJmdnsNetworkTopologyEvent *self, id eventSource);

J2OBJC_TYPE_LITERAL_HEADER(JavaxJmdnsNetworkTopologyEvent)

#endif

#pragma pop_macro("INCLUDE_ALL_JavaxJmdnsNetworkTopologyEvent")
