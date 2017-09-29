//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/impl/tasks/state/Prober.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxJmdnsImplTasksStateProber")
#ifdef RESTRICT_JavaxJmdnsImplTasksStateProber
#define INCLUDE_ALL_JavaxJmdnsImplTasksStateProber 0
#else
#define INCLUDE_ALL_JavaxJmdnsImplTasksStateProber 1
#endif
#undef RESTRICT_JavaxJmdnsImplTasksStateProber

#if !defined (JavaxJmdnsImplTasksStateProber_) && (INCLUDE_ALL_JavaxJmdnsImplTasksStateProber || defined(INCLUDE_JavaxJmdnsImplTasksStateProber))
#define JavaxJmdnsImplTasksStateProber_

#define RESTRICT_JavaxJmdnsImplTasksStateDNSStateTask 1
#define INCLUDE_JavaxJmdnsImplTasksStateDNSStateTask 1
#include "javax/jmdns/impl/tasks/state/DNSStateTask.h"

@class JavaUtilLoggingLogger;
@class JavaUtilTimer;
@class JavaxJmdnsImplDNSOutgoing;
@class JavaxJmdnsImplJmDNSImpl;
@class JavaxJmdnsImplServiceInfoImpl;

@interface JavaxJmdnsImplTasksStateProber : JavaxJmdnsImplTasksStateDNSStateTask

#pragma mark Public

- (instancetype)initWithJavaxJmdnsImplJmDNSImpl:(JavaxJmdnsImplJmDNSImpl *)jmDNSImpl;

- (jboolean)cancel;

- (NSString *)getName;

- (NSString *)getTaskDescription;

- (void)startWithJavaUtilTimer:(JavaUtilTimer *)timer;

- (NSString *)description;

#pragma mark Protected

- (void)advanceTask;

- (JavaxJmdnsImplDNSOutgoing *)buildOutgoingForDNSWithJavaxJmdnsImplDNSOutgoing:(JavaxJmdnsImplDNSOutgoing *)outArg;

- (JavaxJmdnsImplDNSOutgoing *)buildOutgoingForInfoWithJavaxJmdnsImplServiceInfoImpl:(JavaxJmdnsImplServiceInfoImpl *)info
                                                       withJavaxJmdnsImplDNSOutgoing:(JavaxJmdnsImplDNSOutgoing *)outArg;

- (jboolean)checkRunCondition;

- (JavaxJmdnsImplDNSOutgoing *)createOugoing;

- (void)recoverTaskWithNSException:(NSException *)e;
#define recoverTaskWithJavaLangThrowable recoverTaskWithNSException

@end

J2OBJC_STATIC_INIT(JavaxJmdnsImplTasksStateProber)

inline JavaUtilLoggingLogger *JavaxJmdnsImplTasksStateProber_get_logger();
inline JavaUtilLoggingLogger *JavaxJmdnsImplTasksStateProber_set_logger(JavaUtilLoggingLogger *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilLoggingLogger *JavaxJmdnsImplTasksStateProber_logger;
J2OBJC_STATIC_FIELD_OBJ(JavaxJmdnsImplTasksStateProber, logger, JavaUtilLoggingLogger *)

FOUNDATION_EXPORT void JavaxJmdnsImplTasksStateProber_initWithJavaxJmdnsImplJmDNSImpl_(JavaxJmdnsImplTasksStateProber *self, JavaxJmdnsImplJmDNSImpl *jmDNSImpl);

FOUNDATION_EXPORT JavaxJmdnsImplTasksStateProber *new_JavaxJmdnsImplTasksStateProber_initWithJavaxJmdnsImplJmDNSImpl_(JavaxJmdnsImplJmDNSImpl *jmDNSImpl) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxJmdnsImplTasksStateProber *create_JavaxJmdnsImplTasksStateProber_initWithJavaxJmdnsImplJmDNSImpl_(JavaxJmdnsImplJmDNSImpl *jmDNSImpl);

J2OBJC_TYPE_LITERAL_HEADER(JavaxJmdnsImplTasksStateProber)

#endif

#pragma pop_macro("INCLUDE_ALL_JavaxJmdnsImplTasksStateProber")