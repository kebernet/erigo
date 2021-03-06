//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/impl/NetworkTopologyEventImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/net/InetAddress.h"
#include "javax/jmdns/JmDNS.h"
#include "javax/jmdns/NetworkTopologyEvent.h"
#include "javax/jmdns/NetworkTopologyListener.h"
#include "javax/jmdns/impl/NetworkTopologyEventImpl.h"

@interface JavaxJmdnsImplNetworkTopologyEventImpl () {
 @public
  JavaNetInetAddress *_inetAddress_;
}

@end

J2OBJC_FIELD_SETTER(JavaxJmdnsImplNetworkTopologyEventImpl, _inetAddress_, JavaNetInetAddress *)

inline jlong JavaxJmdnsImplNetworkTopologyEventImpl_get_serialVersionUID();
#define JavaxJmdnsImplNetworkTopologyEventImpl_serialVersionUID 1445606146153550463LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxJmdnsImplNetworkTopologyEventImpl, serialVersionUID, jlong)

@implementation JavaxJmdnsImplNetworkTopologyEventImpl

- (instancetype)initWithJavaxJmdnsJmDNS:(JavaxJmdnsJmDNS *)jmDNS
                 withJavaNetInetAddress:(JavaNetInetAddress *)inetAddress {
  JavaxJmdnsImplNetworkTopologyEventImpl_initWithJavaxJmdnsJmDNS_withJavaNetInetAddress_(self, jmDNS, inetAddress);
  return self;
}

- (instancetype)initWithJavaxJmdnsNetworkTopologyListener:(id<JavaxJmdnsNetworkTopologyListener>)jmmDNS
                                   withJavaNetInetAddress:(JavaNetInetAddress *)inetAddress {
  JavaxJmdnsImplNetworkTopologyEventImpl_initWithJavaxJmdnsNetworkTopologyListener_withJavaNetInetAddress_(self, jmmDNS, inetAddress);
  return self;
}

- (JavaxJmdnsJmDNS *)getDNS {
  return ([[self getSource] isKindOfClass:[JavaxJmdnsJmDNS class]] ? (JavaxJmdnsJmDNS *) cast_chk([self getSource], [JavaxJmdnsJmDNS class]) : nil);
}

- (JavaNetInetAddress *)getInetAddress {
  return _inetAddress_;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = new_JavaLangStringBuilder_init();
  (void) [buf appendWithNSString:JreStrcat("C$CIC", '[', [[self java_getClass] getSimpleName], '@', JavaLangSystem_identityHashCodeWithId_(self), ' ')];
  (void) [buf appendWithNSString:@"\n\tinetAddress: '"];
  (void) [buf appendWithId:[self getInetAddress]];
  (void) [buf appendWithNSString:@"']"];
  return [buf description];
}

- (JavaxJmdnsImplNetworkTopologyEventImpl *)java_clone {
  return new_JavaxJmdnsImplNetworkTopologyEventImpl_initWithJavaxJmdnsJmDNS_withJavaNetInetAddress_([self getDNS], [self getInetAddress]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsJmDNS;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaNetInetAddress;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplNetworkTopologyEventImpl;", 0x1, 3, -1, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaxJmdnsJmDNS:withJavaNetInetAddress:);
  methods[1].selector = @selector(initWithJavaxJmdnsNetworkTopologyListener:withJavaNetInetAddress:);
  methods[2].selector = @selector(getDNS);
  methods[3].selector = @selector(getInetAddress);
  methods[4].selector = @selector(description);
  methods[5].selector = @selector(java_clone);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = JavaxJmdnsImplNetworkTopologyEventImpl_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "_inetAddress_", "LJavaNetInetAddress;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaxJmdnsJmDNS;LJavaNetInetAddress;", "LJavaxJmdnsNetworkTopologyListener;LJavaNetInetAddress;", "toString", "clone", "LJavaLangCloneNotSupportedException;" };
  static const J2ObjcClassInfo _JavaxJmdnsImplNetworkTopologyEventImpl = { "NetworkTopologyEventImpl", "javax.jmdns.impl", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, -1, -1, -1, -1 };
  return &_JavaxJmdnsImplNetworkTopologyEventImpl;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self java_clone];
}

@end

void JavaxJmdnsImplNetworkTopologyEventImpl_initWithJavaxJmdnsJmDNS_withJavaNetInetAddress_(JavaxJmdnsImplNetworkTopologyEventImpl *self, JavaxJmdnsJmDNS *jmDNS, JavaNetInetAddress *inetAddress) {
  JavaxJmdnsNetworkTopologyEvent_initWithId_(self, jmDNS);
  self->_inetAddress_ = inetAddress;
}

JavaxJmdnsImplNetworkTopologyEventImpl *new_JavaxJmdnsImplNetworkTopologyEventImpl_initWithJavaxJmdnsJmDNS_withJavaNetInetAddress_(JavaxJmdnsJmDNS *jmDNS, JavaNetInetAddress *inetAddress) {
  J2OBJC_NEW_IMPL(JavaxJmdnsImplNetworkTopologyEventImpl, initWithJavaxJmdnsJmDNS_withJavaNetInetAddress_, jmDNS, inetAddress)
}

JavaxJmdnsImplNetworkTopologyEventImpl *create_JavaxJmdnsImplNetworkTopologyEventImpl_initWithJavaxJmdnsJmDNS_withJavaNetInetAddress_(JavaxJmdnsJmDNS *jmDNS, JavaNetInetAddress *inetAddress) {
  J2OBJC_CREATE_IMPL(JavaxJmdnsImplNetworkTopologyEventImpl, initWithJavaxJmdnsJmDNS_withJavaNetInetAddress_, jmDNS, inetAddress)
}

void JavaxJmdnsImplNetworkTopologyEventImpl_initWithJavaxJmdnsNetworkTopologyListener_withJavaNetInetAddress_(JavaxJmdnsImplNetworkTopologyEventImpl *self, id<JavaxJmdnsNetworkTopologyListener> jmmDNS, JavaNetInetAddress *inetAddress) {
  JavaxJmdnsNetworkTopologyEvent_initWithId_(self, jmmDNS);
  self->_inetAddress_ = inetAddress;
}

JavaxJmdnsImplNetworkTopologyEventImpl *new_JavaxJmdnsImplNetworkTopologyEventImpl_initWithJavaxJmdnsNetworkTopologyListener_withJavaNetInetAddress_(id<JavaxJmdnsNetworkTopologyListener> jmmDNS, JavaNetInetAddress *inetAddress) {
  J2OBJC_NEW_IMPL(JavaxJmdnsImplNetworkTopologyEventImpl, initWithJavaxJmdnsNetworkTopologyListener_withJavaNetInetAddress_, jmmDNS, inetAddress)
}

JavaxJmdnsImplNetworkTopologyEventImpl *create_JavaxJmdnsImplNetworkTopologyEventImpl_initWithJavaxJmdnsNetworkTopologyListener_withJavaNetInetAddress_(id<JavaxJmdnsNetworkTopologyListener> jmmDNS, JavaNetInetAddress *inetAddress) {
  J2OBJC_CREATE_IMPL(JavaxJmdnsImplNetworkTopologyEventImpl, initWithJavaxJmdnsNetworkTopologyListener_withJavaNetInetAddress_, jmmDNS, inetAddress)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxJmdnsImplNetworkTopologyEventImpl)
