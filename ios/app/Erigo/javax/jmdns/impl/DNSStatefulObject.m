//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/impl/DNSStatefulObject.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/Thread.h"
#include "java/util/Collection.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "java/util/concurrent/ConcurrentMap.h"
#include "java/util/concurrent/Semaphore.h"
#include "java/util/concurrent/TimeUnit.h"
#include "java/util/concurrent/locks/ReentrantLock.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"
#include "javax/jmdns/impl/DNSStatefulObject.h"
#include "javax/jmdns/impl/JmDNSImpl.h"
#include "javax/jmdns/impl/constants/DNSState.h"
#include "javax/jmdns/impl/tasks/DNSTask.h"

@interface JavaxJmdnsImplDNSStatefulObject : NSObject

@end

@interface JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore () {
 @public
  NSString *_name_;
  id<JavaUtilConcurrentConcurrentMap> _semaphores_;
}

@end

J2OBJC_FIELD_SETTER(JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore, _name_, NSString *)
J2OBJC_FIELD_SETTER(JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore, _semaphores_, id<JavaUtilConcurrentConcurrentMap>)

inline JavaUtilLoggingLogger *JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_get_logger();
inline JavaUtilLoggingLogger *JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_set_logger(JavaUtilLoggingLogger *value);
static JavaUtilLoggingLogger *JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_logger;
J2OBJC_STATIC_FIELD_OBJ(JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore, logger, JavaUtilLoggingLogger *)

@interface JavaxJmdnsImplDNSStatefulObject_DefaultImplementation () {
 @public
  volatile_id _dns_;
  JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *_announcing_;
  JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *_canceling_;
}

- (jboolean)willCancel;

- (jboolean)willClose;

@end

J2OBJC_VOLATILE_FIELD_SETTER(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation, _dns_, JavaxJmdnsImplJmDNSImpl *)
J2OBJC_FIELD_SETTER(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation, _announcing_, JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *)
J2OBJC_FIELD_SETTER(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation, _canceling_, JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *)

inline JavaUtilLoggingLogger *JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_get_logger();
inline JavaUtilLoggingLogger *JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_set_logger(JavaUtilLoggingLogger *value);
static JavaUtilLoggingLogger *JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_logger;
J2OBJC_STATIC_FIELD_OBJ(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation, logger, JavaUtilLoggingLogger *)

inline jlong JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_get_serialVersionUID();
#define JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_serialVersionUID -3264781576883412227LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation, serialVersionUID, jlong)

__attribute__((unused)) static jboolean JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willCancel(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation *self);

__attribute__((unused)) static jboolean JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willClose(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation *self);

@implementation JavaxJmdnsImplDNSStatefulObject

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaxJmdnsImplJmDNSImpl;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 4, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 5, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 8, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getDns);
  methods[1].selector = @selector(associateWithTaskWithJavaxJmdnsImplTasksDNSTask:withJavaxJmdnsImplConstantsDNSState:);
  methods[2].selector = @selector(removeAssociationWithTaskWithJavaxJmdnsImplTasksDNSTask:);
  methods[3].selector = @selector(isAssociatedWithTaskWithJavaxJmdnsImplTasksDNSTask:withJavaxJmdnsImplConstantsDNSState:);
  methods[4].selector = @selector(advanceStateWithJavaxJmdnsImplTasksDNSTask:);
  methods[5].selector = @selector(revertState);
  methods[6].selector = @selector(cancelState);
  methods[7].selector = @selector(closeState);
  methods[8].selector = @selector(recoverState);
  methods[9].selector = @selector(isProbing);
  methods[10].selector = @selector(isAnnouncing);
  methods[11].selector = @selector(isAnnounced);
  methods[12].selector = @selector(isCanceling);
  methods[13].selector = @selector(isCanceled);
  methods[14].selector = @selector(isClosing);
  methods[15].selector = @selector(isClosed);
  methods[16].selector = @selector(waitForAnnouncedWithLong:);
  methods[17].selector = @selector(waitForCanceledWithLong:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "associateWithTask", "LJavaxJmdnsImplTasksDNSTask;LJavaxJmdnsImplConstantsDNSState;", "removeAssociationWithTask", "LJavaxJmdnsImplTasksDNSTask;", "isAssociatedWithTask", "advanceState", "waitForAnnounced", "J", "waitForCanceled", "LJavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore;LJavaxJmdnsImplDNSStatefulObject_DefaultImplementation;" };
  static const J2ObjcClassInfo _JavaxJmdnsImplDNSStatefulObject = { "DNSStatefulObject", "javax.jmdns.impl", ptrTable, methods, NULL, 7, 0x609, 18, 0, -1, 9, -1, -1, -1 };
  return &_JavaxJmdnsImplDNSStatefulObject;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(JavaxJmdnsImplDNSStatefulObject)

J2OBJC_INITIALIZED_DEFN(JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore)

@implementation JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore

- (instancetype)initWithNSString:(NSString *)name {
  JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_initWithNSString_(self, name);
  return self;
}

- (void)waitForEventWithLong:(jlong)timeout {
  JavaLangThread *thread = JavaLangThread_currentThread();
  JavaUtilConcurrentSemaphore *semaphore = [((id<JavaUtilConcurrentConcurrentMap>) nil_chk(_semaphores_)) getWithId:thread];
  if (semaphore == nil) {
    semaphore = new_JavaUtilConcurrentSemaphore_initWithInt_withBoolean_(1, true);
    [semaphore drainPermits];
    (void) [_semaphores_ putIfAbsentWithId:thread withId:semaphore];
  }
  semaphore = [_semaphores_ getWithId:thread];
  @try {
    [((JavaUtilConcurrentSemaphore *) nil_chk(semaphore)) tryAcquireWithLong:timeout withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, MILLISECONDS)];
  }
  @catch (JavaLangInterruptedException *exception) {
    [((JavaUtilLoggingLogger *) nil_chk(JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_logger)) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, FINER) withNSString:@"Exception " withNSException:exception];
  }
}

- (void)signalEvent {
  id<JavaUtilCollection> semaphores = [((id<JavaUtilConcurrentConcurrentMap>) nil_chk(_semaphores_)) values];
  for (JavaUtilConcurrentSemaphore * __strong semaphore in nil_chk(semaphores)) {
    [((JavaUtilConcurrentSemaphore *) nil_chk(semaphore)) release__];
    [semaphores removeWithId:semaphore];
  }
}

- (NSString *)description {
  JavaLangStringBuilder *aLog = new_JavaLangStringBuilder_initWithInt_(1000);
  (void) [aLog appendWithNSString:@"Semaphore: "];
  (void) [aLog appendWithNSString:self->_name_];
  if ([((id<JavaUtilConcurrentConcurrentMap>) nil_chk(_semaphores_)) size] == 0) {
    (void) [aLog appendWithNSString:@" no semaphores."];
  }
  else {
    (void) [aLog appendWithNSString:@" semaphores:\n"];
    for (JavaLangThread * __strong thread in nil_chk([_semaphores_ keySet])) {
      (void) [aLog appendWithNSString:@"\tThread: "];
      (void) [aLog appendWithNSString:[((JavaLangThread *) nil_chk(thread)) getName]];
      (void) [aLog appendWithChar:' '];
      (void) [aLog appendWithId:[_semaphores_ getWithId:thread]];
      (void) [aLog appendWithChar:0x000a];
    }
  }
  return [aLog description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(waitForEventWithLong:);
  methods[2].selector = @selector(signalEvent);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "logger", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0xa, -1, 4, -1, -1 },
    { "_name_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_semaphores_", "LJavaUtilConcurrentConcurrentMap;", .constantValue.asLong = 0, 0x12, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "waitForEvent", "J", "toString", &JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_logger, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Thread;Ljava/util/concurrent/Semaphore;>;", "LJavaxJmdnsImplDNSStatefulObject;" };
  static const J2ObjcClassInfo _JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore = { "DNSStatefulObjectSemaphore", "javax.jmdns.impl", ptrTable, methods, fields, 7, 0x19, 4, 3, 6, -1, -1, -1, -1 };
  return &_JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore;
}

+ (void)initialize {
  if (self == [JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore class]) {
    JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_logger = JavaUtilLoggingLogger_getLoggerWithNSString_([JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_class_() getName]);
    J2OBJC_SET_INITIALIZED(JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore)
  }
}

@end

void JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_initWithNSString_(JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *self, NSString *name) {
  NSObject_init(self);
  self->_name_ = name;
  self->_semaphores_ = new_JavaUtilConcurrentConcurrentHashMap_initWithInt_(50);
}

JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *new_JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_initWithNSString_(NSString *name) {
  J2OBJC_NEW_IMPL(JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore, initWithNSString_, name)
}

JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *create_JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_initWithNSString_(NSString *name) {
  J2OBJC_CREATE_IMPL(JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore, initWithNSString_, name)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore)

J2OBJC_INITIALIZED_DEFN(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation)

@implementation JavaxJmdnsImplDNSStatefulObject_DefaultImplementation

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaxJmdnsImplJmDNSImpl *)getDns {
  return JreLoadVolatileId(&self->_dns_);
}

- (void)setDnsWithJavaxJmdnsImplJmDNSImpl:(JavaxJmdnsImplJmDNSImpl *)dns {
  (void) JreVolatileStrongAssign(&self->_dns_, dns);
}

- (void)associateWithTaskWithJavaxJmdnsImplTasksDNSTask:(JavaxJmdnsImplTasksDNSTask *)task
                    withJavaxJmdnsImplConstantsDNSState:(JavaxJmdnsImplConstantsDNSState *)state {
  if (JreLoadVolatileId(&self->_task_) == nil && JreLoadVolatileId(&self->_state_) == state) {
    [self lock];
    @try {
      if (JreLoadVolatileId(&self->_task_) == nil && JreLoadVolatileId(&self->_state_) == state) {
        [self setTaskWithJavaxJmdnsImplTasksDNSTask:task];
      }
    }
    @finally {
      [self unlock];
    }
  }
}

- (void)removeAssociationWithTaskWithJavaxJmdnsImplTasksDNSTask:(JavaxJmdnsImplTasksDNSTask *)task {
  if (JreLoadVolatileId(&self->_task_) == task) {
    [self lock];
    @try {
      if (JreLoadVolatileId(&self->_task_) == task) {
        [self setTaskWithJavaxJmdnsImplTasksDNSTask:nil];
      }
    }
    @finally {
      [self unlock];
    }
  }
}

- (jboolean)isAssociatedWithTaskWithJavaxJmdnsImplTasksDNSTask:(JavaxJmdnsImplTasksDNSTask *)task
                           withJavaxJmdnsImplConstantsDNSState:(JavaxJmdnsImplConstantsDNSState *)state {
  [self lock];
  @try {
    return JreLoadVolatileId(&self->_task_) == task && JreLoadVolatileId(&self->_state_) == state;
  }
  @finally {
    [self unlock];
  }
}

- (void)setTaskWithJavaxJmdnsImplTasksDNSTask:(JavaxJmdnsImplTasksDNSTask *)task {
  (void) JreVolatileStrongAssign(&self->_task_, task);
}

- (void)setStateWithJavaxJmdnsImplConstantsDNSState:(JavaxJmdnsImplConstantsDNSState *)state {
  [self lock];
  @try {
    (void) JreVolatileStrongAssign(&self->_state_, state);
    if ([self isAnnounced]) {
      [((JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *) nil_chk(_announcing_)) signalEvent];
    }
    if ([self isCanceled]) {
      [((JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *) nil_chk(_canceling_)) signalEvent];
      [((JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *) nil_chk(_announcing_)) signalEvent];
    }
  }
  @finally {
    [self unlock];
  }
}

- (jboolean)advanceStateWithJavaxJmdnsImplTasksDNSTask:(JavaxJmdnsImplTasksDNSTask *)task {
  jboolean result = true;
  if (JreLoadVolatileId(&self->_task_) == task) {
    [self lock];
    @try {
      if (JreLoadVolatileId(&self->_task_) == task) {
        [self setStateWithJavaxJmdnsImplConstantsDNSState:[((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) advance]];
      }
      else {
        [((JavaUtilLoggingLogger *) nil_chk(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_logger)) warningWithNSString:JreStrcat("$@$@", @"Trying to advance state whhen not the owner. owner: ", JreLoadVolatileId(&self->_task_), @" perpetrator: ", task)];
      }
    }
    @finally {
      [self unlock];
    }
  }
  return result;
}

- (jboolean)revertState {
  jboolean result = true;
  if (!JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willCancel(self)) {
    [self lock];
    @try {
      if (!JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willCancel(self)) {
        [self setStateWithJavaxJmdnsImplConstantsDNSState:[((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) revert]];
        [self setTaskWithJavaxJmdnsImplTasksDNSTask:nil];
      }
    }
    @finally {
      [self unlock];
    }
  }
  return result;
}

- (jboolean)cancelState {
  jboolean result = false;
  if (!JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willCancel(self)) {
    [self lock];
    @try {
      if (!JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willCancel(self)) {
        [self setStateWithJavaxJmdnsImplConstantsDNSState:JreLoadEnum(JavaxJmdnsImplConstantsDNSState, CANCELING_1)];
        [self setTaskWithJavaxJmdnsImplTasksDNSTask:nil];
        result = true;
      }
    }
    @finally {
      [self unlock];
    }
  }
  return result;
}

- (jboolean)closeState {
  jboolean result = false;
  if (!JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willClose(self)) {
    [self lock];
    @try {
      if (!JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willClose(self)) {
        [self setStateWithJavaxJmdnsImplConstantsDNSState:JreLoadEnum(JavaxJmdnsImplConstantsDNSState, CLOSING)];
        [self setTaskWithJavaxJmdnsImplTasksDNSTask:nil];
        result = true;
      }
    }
    @finally {
      [self unlock];
    }
  }
  return result;
}

- (jboolean)recoverState {
  jboolean result = false;
  [self lock];
  @try {
    [self setStateWithJavaxJmdnsImplConstantsDNSState:JreLoadEnum(JavaxJmdnsImplConstantsDNSState, PROBING_1)];
    [self setTaskWithJavaxJmdnsImplTasksDNSTask:nil];
  }
  @finally {
    [self unlock];
  }
  return result;
}

- (jboolean)isProbing {
  return [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isProbing];
}

- (jboolean)isAnnouncing {
  return [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isAnnouncing];
}

- (jboolean)isAnnounced {
  return [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isAnnounced];
}

- (jboolean)isCanceling {
  return [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isCanceling];
}

- (jboolean)isCanceled {
  return [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isCanceled];
}

- (jboolean)isClosing {
  return [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isClosing];
}

- (jboolean)isClosed {
  return [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isClosed];
}

- (jboolean)willCancel {
  return JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willCancel(self);
}

- (jboolean)willClose {
  return JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willClose(self);
}

- (jboolean)waitForAnnouncedWithLong:(jlong)timeout {
  if (![self isAnnounced] && !JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willCancel(self)) {
    [((JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *) nil_chk(_announcing_)) waitForEventWithLong:timeout];
  }
  if (![self isAnnounced]) {
    if (JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willCancel(self) || JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willClose(self)) {
      [((JavaUtilLoggingLogger *) nil_chk(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_logger)) fineWithNSString:JreStrcat("$@", @"Wait for announced cancelled: ", self)];
    }
    else {
      [((JavaUtilLoggingLogger *) nil_chk(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_logger)) warningWithNSString:JreStrcat("$@", @"Wait for announced timed out: ", self)];
    }
  }
  return [self isAnnounced];
}

- (jboolean)waitForCanceledWithLong:(jlong)timeout {
  if (![self isCanceled]) {
    [((JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore *) nil_chk(_canceling_)) waitForEventWithLong:timeout];
  }
  if (![self isCanceled] && !JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willClose(self)) {
    [((JavaUtilLoggingLogger *) nil_chk(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_logger)) warningWithNSString:JreStrcat("$@", @"Wait for canceled timed out: ", self)];
  }
  return [self isCanceled];
}

- (NSString *)description {
  return JreStrcat("$$@$@", (JreLoadVolatileId(&_dns_) != nil ? JreStrcat("$$", @"DNS: ", [((JavaxJmdnsImplJmDNSImpl *) nil_chk(JreLoadVolatileId(&_dns_))) getName]) : @"NO DNS"), @" state: ", JreLoadVolatileId(&_state_), @" task: ", JreLoadVolatileId(&_task_));
}

- (void)__javaClone:(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation *)original {
  [super __javaClone:original];
  JreCloneVolatileStrong(&_dns_, &original->_dns_);
  JreCloneVolatileStrong(&_task_, &original->_task_);
  JreCloneVolatileStrong(&_state_, &original->_state_);
}

- (void)dealloc {
  JreReleaseVolatile(&_dns_);
  JreReleaseVolatile(&_task_);
  JreReleaseVolatile(&_state_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxJmdnsImplJmDNSImpl;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 7, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 8, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 10, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 13, 12, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getDns);
  methods[2].selector = @selector(setDnsWithJavaxJmdnsImplJmDNSImpl:);
  methods[3].selector = @selector(associateWithTaskWithJavaxJmdnsImplTasksDNSTask:withJavaxJmdnsImplConstantsDNSState:);
  methods[4].selector = @selector(removeAssociationWithTaskWithJavaxJmdnsImplTasksDNSTask:);
  methods[5].selector = @selector(isAssociatedWithTaskWithJavaxJmdnsImplTasksDNSTask:withJavaxJmdnsImplConstantsDNSState:);
  methods[6].selector = @selector(setTaskWithJavaxJmdnsImplTasksDNSTask:);
  methods[7].selector = @selector(setStateWithJavaxJmdnsImplConstantsDNSState:);
  methods[8].selector = @selector(advanceStateWithJavaxJmdnsImplTasksDNSTask:);
  methods[9].selector = @selector(revertState);
  methods[10].selector = @selector(cancelState);
  methods[11].selector = @selector(closeState);
  methods[12].selector = @selector(recoverState);
  methods[13].selector = @selector(isProbing);
  methods[14].selector = @selector(isAnnouncing);
  methods[15].selector = @selector(isAnnounced);
  methods[16].selector = @selector(isCanceling);
  methods[17].selector = @selector(isCanceled);
  methods[18].selector = @selector(isClosing);
  methods[19].selector = @selector(isClosed);
  methods[20].selector = @selector(willCancel);
  methods[21].selector = @selector(willClose);
  methods[22].selector = @selector(waitForAnnouncedWithLong:);
  methods[23].selector = @selector(waitForCanceledWithLong:);
  methods[24].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "logger", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0xa, -1, 15, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "_dns_", "LJavaxJmdnsImplJmDNSImpl;", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_task_", "LJavaxJmdnsImplTasksDNSTask;", .constantValue.asLong = 0, 0x44, -1, -1, -1, -1 },
    { "_state_", "LJavaxJmdnsImplConstantsDNSState;", .constantValue.asLong = 0, 0x44, -1, -1, -1, -1 },
    { "_announcing_", "LJavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_canceling_", "LJavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setDns", "LJavaxJmdnsImplJmDNSImpl;", "associateWithTask", "LJavaxJmdnsImplTasksDNSTask;LJavaxJmdnsImplConstantsDNSState;", "removeAssociationWithTask", "LJavaxJmdnsImplTasksDNSTask;", "isAssociatedWithTask", "setTask", "setState", "LJavaxJmdnsImplConstantsDNSState;", "advanceState", "waitForAnnounced", "J", "waitForCanceled", "toString", &JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_logger, "LJavaxJmdnsImplDNSStatefulObject;" };
  static const J2ObjcClassInfo _JavaxJmdnsImplDNSStatefulObject_DefaultImplementation = { "DefaultImplementation", "javax.jmdns.impl", ptrTable, methods, fields, 7, 0x9, 25, 7, 16, -1, -1, -1, -1 };
  return &_JavaxJmdnsImplDNSStatefulObject_DefaultImplementation;
}

+ (void)initialize {
  if (self == [JavaxJmdnsImplDNSStatefulObject_DefaultImplementation class]) {
    JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_logger = JavaUtilLoggingLogger_getLoggerWithNSString_([JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_class_() getName]);
    J2OBJC_SET_INITIALIZED(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation)
  }
}

@end

void JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_init(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation *self) {
  JavaUtilConcurrentLocksReentrantLock_init(self);
  (void) JreVolatileStrongAssign(&self->_dns_, nil);
  (void) JreVolatileStrongAssign(&self->_task_, nil);
  (void) JreVolatileStrongAssign(&self->_state_, JreLoadEnum(JavaxJmdnsImplConstantsDNSState, PROBING_1));
  self->_announcing_ = new_JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_initWithNSString_(@"Announce");
  self->_canceling_ = new_JavaxJmdnsImplDNSStatefulObject_DNSStatefulObjectSemaphore_initWithNSString_(@"Cancel");
}

JavaxJmdnsImplDNSStatefulObject_DefaultImplementation *new_JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_init() {
  J2OBJC_NEW_IMPL(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation, init)
}

JavaxJmdnsImplDNSStatefulObject_DefaultImplementation *create_JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_init() {
  J2OBJC_CREATE_IMPL(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation, init)
}

jboolean JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willCancel(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation *self) {
  return [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isCanceled] || [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isCanceling];
}

jboolean JavaxJmdnsImplDNSStatefulObject_DefaultImplementation_willClose(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation *self) {
  return [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isClosed] || [((JavaxJmdnsImplConstantsDNSState *) nil_chk(JreLoadVolatileId(&self->_state_))) isClosing];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxJmdnsImplDNSStatefulObject_DefaultImplementation)
