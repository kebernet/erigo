//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/eventbus/EventBus.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/MoreObjects.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/eventbus/DeadEvent.h"
#include "com/google/common/eventbus/Dispatcher.h"
#include "com/google/common/eventbus/EventBus.h"
#include "com/google/common/eventbus/SubscriberExceptionContext.h"
#include "com/google/common/eventbus/SubscriberExceptionHandler.h"
#include "com/google/common/eventbus/SubscriberRegistry.h"
#include "com/google/common/util/concurrent/MoreExecutors.h"
#include "java/lang/reflect/Method.h"
#include "java/util/Iterator.h"
#include "java/util/Locale.h"
#include "java/util/concurrent/Executor.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"

@interface ComGoogleCommonEventbusEventBus () {
 @public
  NSString *identifier_;
  id<JavaUtilConcurrentExecutor> executor_;
  id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler_;
  ComGoogleCommonEventbusSubscriberRegistry *subscribers_;
  ComGoogleCommonEventbusDispatcher *dispatcher_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonEventbusEventBus, identifier_, NSString *)
J2OBJC_FIELD_SETTER(ComGoogleCommonEventbusEventBus, executor_, id<JavaUtilConcurrentExecutor>)
J2OBJC_FIELD_SETTER(ComGoogleCommonEventbusEventBus, exceptionHandler_, id<ComGoogleCommonEventbusSubscriberExceptionHandler>)
J2OBJC_FIELD_SETTER(ComGoogleCommonEventbusEventBus, subscribers_, ComGoogleCommonEventbusSubscriberRegistry *)
J2OBJC_FIELD_SETTER(ComGoogleCommonEventbusEventBus, dispatcher_, ComGoogleCommonEventbusDispatcher *)

inline JavaUtilLoggingLogger *ComGoogleCommonEventbusEventBus_get_logger();
static JavaUtilLoggingLogger *ComGoogleCommonEventbusEventBus_logger;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonEventbusEventBus, logger, JavaUtilLoggingLogger *)

__attribute__((unused)) static NSString *ComGoogleCommonEventbusEventBus_identifier(ComGoogleCommonEventbusEventBus *self);

@interface ComGoogleCommonEventbusEventBus_LoggingHandler ()

+ (JavaUtilLoggingLogger *)loggerWithComGoogleCommonEventbusSubscriberExceptionContext:(ComGoogleCommonEventbusSubscriberExceptionContext *)context;

+ (NSString *)messageWithComGoogleCommonEventbusSubscriberExceptionContext:(ComGoogleCommonEventbusSubscriberExceptionContext *)context;

@end

__attribute__((unused)) static JavaUtilLoggingLogger *ComGoogleCommonEventbusEventBus_LoggingHandler_loggerWithComGoogleCommonEventbusSubscriberExceptionContext_(ComGoogleCommonEventbusSubscriberExceptionContext *context);

__attribute__((unused)) static NSString *ComGoogleCommonEventbusEventBus_LoggingHandler_messageWithComGoogleCommonEventbusSubscriberExceptionContext_(ComGoogleCommonEventbusSubscriberExceptionContext *context);

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonEventbusEventBus)

@implementation ComGoogleCommonEventbusEventBus

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonEventbusEventBus_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)identifier {
  ComGoogleCommonEventbusEventBus_initWithNSString_(self, identifier);
  return self;
}

- (instancetype)initWithComGoogleCommonEventbusSubscriberExceptionHandler:(id<ComGoogleCommonEventbusSubscriberExceptionHandler>)exceptionHandler {
  ComGoogleCommonEventbusEventBus_initWithComGoogleCommonEventbusSubscriberExceptionHandler_(self, exceptionHandler);
  return self;
}

- (instancetype)initWithNSString:(NSString *)identifier
  withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor
withComGoogleCommonEventbusDispatcher:(ComGoogleCommonEventbusDispatcher *)dispatcher
withComGoogleCommonEventbusSubscriberExceptionHandler:(id<ComGoogleCommonEventbusSubscriberExceptionHandler>)exceptionHandler {
  ComGoogleCommonEventbusEventBus_initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_(self, identifier, executor, dispatcher, exceptionHandler);
  return self;
}

- (NSString *)identifier {
  return ComGoogleCommonEventbusEventBus_identifier(self);
}

- (id<JavaUtilConcurrentExecutor>)executor {
  return executor_;
}

- (void)handleSubscriberExceptionWithNSException:(NSException *)e
withComGoogleCommonEventbusSubscriberExceptionContext:(ComGoogleCommonEventbusSubscriberExceptionContext *)context {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(e);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(context);
  @try {
    [((id<ComGoogleCommonEventbusSubscriberExceptionHandler>) nil_chk(exceptionHandler_)) handleExceptionWithNSException:e withComGoogleCommonEventbusSubscriberExceptionContext:context];
  }
  @catch (NSException *e2) {
    [((JavaUtilLoggingLogger *) nil_chk(ComGoogleCommonEventbusEventBus_logger)) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, SEVERE) withNSString:NSString_java_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(JreLoadStatic(JavaUtilLocale, ROOT), @"Exception %s thrown while handling exception: %s", [IOSObjectArray newArrayWithObjects:(id[]){ e2, e } count:2 type:NSObject_class_()]) withNSException:e2];
  }
}

- (void)register__WithId:(id)object {
  [((ComGoogleCommonEventbusSubscriberRegistry *) nil_chk(subscribers_)) register__WithId:object];
}

- (void)unregisterWithId:(id)object {
  [((ComGoogleCommonEventbusSubscriberRegistry *) nil_chk(subscribers_)) unregisterWithId:object];
}

- (void)postWithId:(id)event {
  id<JavaUtilIterator> eventSubscribers = [((ComGoogleCommonEventbusSubscriberRegistry *) nil_chk(subscribers_)) getSubscribersWithId:event];
  if ([((id<JavaUtilIterator>) nil_chk(eventSubscribers)) hasNext]) {
    [((ComGoogleCommonEventbusDispatcher *) nil_chk(dispatcher_)) dispatchWithId:event withJavaUtilIterator:eventSubscribers];
  }
  else if (!([event isKindOfClass:[ComGoogleCommonEventbusDeadEvent class]])) {
    [self postWithId:new_ComGoogleCommonEventbusDeadEvent_initWithId_withId_(self, event)];
  }
}

- (NSString *)description {
  return [((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk([((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk(ComGoogleCommonBaseMoreObjects_toStringHelperWithId_(self))) addValueWithId:identifier_])) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilConcurrentExecutor;", 0x10, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithComGoogleCommonEventbusSubscriberExceptionHandler:);
  methods[3].selector = @selector(initWithNSString:withJavaUtilConcurrentExecutor:withComGoogleCommonEventbusDispatcher:withComGoogleCommonEventbusSubscriberExceptionHandler:);
  methods[4].selector = @selector(identifier);
  methods[5].selector = @selector(executor);
  methods[6].selector = @selector(handleSubscriberExceptionWithNSException:withComGoogleCommonEventbusSubscriberExceptionContext:);
  methods[7].selector = @selector(register__WithId:);
  methods[8].selector = @selector(unregisterWithId:);
  methods[9].selector = @selector(postWithId:);
  methods[10].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "logger", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "identifier_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "executor_", "LJavaUtilConcurrentExecutor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "exceptionHandler_", "LComGoogleCommonEventbusSubscriberExceptionHandler;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "subscribers_", "LComGoogleCommonEventbusSubscriberRegistry;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "dispatcher_", "LComGoogleCommonEventbusDispatcher;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LComGoogleCommonEventbusSubscriberExceptionHandler;", "LNSString;LJavaUtilConcurrentExecutor;LComGoogleCommonEventbusDispatcher;LComGoogleCommonEventbusSubscriberExceptionHandler;", "handleSubscriberException", "LNSException;LComGoogleCommonEventbusSubscriberExceptionContext;", "register", "LNSObject;", "unregister", "post", "toString", &ComGoogleCommonEventbusEventBus_logger, "LComGoogleCommonEventbusEventBus_LoggingHandler;" };
  static const J2ObjcClassInfo _ComGoogleCommonEventbusEventBus = { "EventBus", "com.google.common.eventbus", ptrTable, methods, fields, 7, 0x1, 11, 6, -1, 11, -1, -1, -1 };
  return &_ComGoogleCommonEventbusEventBus;
}

+ (void)initialize {
  if (self == [ComGoogleCommonEventbusEventBus class]) {
    ComGoogleCommonEventbusEventBus_logger = JavaUtilLoggingLogger_getLoggerWithNSString_([ComGoogleCommonEventbusEventBus_class_() getName]);
    J2OBJC_SET_INITIALIZED(ComGoogleCommonEventbusEventBus)
  }
}

@end

void ComGoogleCommonEventbusEventBus_init(ComGoogleCommonEventbusEventBus *self) {
  ComGoogleCommonEventbusEventBus_initWithNSString_(self, @"default");
}

ComGoogleCommonEventbusEventBus *new_ComGoogleCommonEventbusEventBus_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonEventbusEventBus, init)
}

ComGoogleCommonEventbusEventBus *create_ComGoogleCommonEventbusEventBus_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonEventbusEventBus, init)
}

void ComGoogleCommonEventbusEventBus_initWithNSString_(ComGoogleCommonEventbusEventBus *self, NSString *identifier) {
  ComGoogleCommonEventbusEventBus_initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_(self, identifier, ComGoogleCommonUtilConcurrentMoreExecutors_directExecutor(), ComGoogleCommonEventbusDispatcher_perThreadDispatchQueue(), JreLoadStatic(ComGoogleCommonEventbusEventBus_LoggingHandler, INSTANCE));
}

ComGoogleCommonEventbusEventBus *new_ComGoogleCommonEventbusEventBus_initWithNSString_(NSString *identifier) {
  J2OBJC_NEW_IMPL(ComGoogleCommonEventbusEventBus, initWithNSString_, identifier)
}

ComGoogleCommonEventbusEventBus *create_ComGoogleCommonEventbusEventBus_initWithNSString_(NSString *identifier) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonEventbusEventBus, initWithNSString_, identifier)
}

void ComGoogleCommonEventbusEventBus_initWithComGoogleCommonEventbusSubscriberExceptionHandler_(ComGoogleCommonEventbusEventBus *self, id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler) {
  ComGoogleCommonEventbusEventBus_initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_(self, @"default", ComGoogleCommonUtilConcurrentMoreExecutors_directExecutor(), ComGoogleCommonEventbusDispatcher_perThreadDispatchQueue(), exceptionHandler);
}

ComGoogleCommonEventbusEventBus *new_ComGoogleCommonEventbusEventBus_initWithComGoogleCommonEventbusSubscriberExceptionHandler_(id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler) {
  J2OBJC_NEW_IMPL(ComGoogleCommonEventbusEventBus, initWithComGoogleCommonEventbusSubscriberExceptionHandler_, exceptionHandler)
}

ComGoogleCommonEventbusEventBus *create_ComGoogleCommonEventbusEventBus_initWithComGoogleCommonEventbusSubscriberExceptionHandler_(id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonEventbusEventBus, initWithComGoogleCommonEventbusSubscriberExceptionHandler_, exceptionHandler)
}

void ComGoogleCommonEventbusEventBus_initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_(ComGoogleCommonEventbusEventBus *self, NSString *identifier, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonEventbusDispatcher *dispatcher, id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler) {
  NSObject_init(self);
  self->subscribers_ = new_ComGoogleCommonEventbusSubscriberRegistry_initWithComGoogleCommonEventbusEventBus_(self);
  self->identifier_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(identifier);
  self->executor_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(executor);
  self->dispatcher_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(dispatcher);
  self->exceptionHandler_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(exceptionHandler);
}

ComGoogleCommonEventbusEventBus *new_ComGoogleCommonEventbusEventBus_initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_(NSString *identifier, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonEventbusDispatcher *dispatcher, id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler) {
  J2OBJC_NEW_IMPL(ComGoogleCommonEventbusEventBus, initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_, identifier, executor, dispatcher, exceptionHandler)
}

ComGoogleCommonEventbusEventBus *create_ComGoogleCommonEventbusEventBus_initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_(NSString *identifier, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonEventbusDispatcher *dispatcher, id<ComGoogleCommonEventbusSubscriberExceptionHandler> exceptionHandler) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonEventbusEventBus, initWithNSString_withJavaUtilConcurrentExecutor_withComGoogleCommonEventbusDispatcher_withComGoogleCommonEventbusSubscriberExceptionHandler_, identifier, executor, dispatcher, exceptionHandler)
}

NSString *ComGoogleCommonEventbusEventBus_identifier(ComGoogleCommonEventbusEventBus *self) {
  return self->identifier_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonEventbusEventBus)

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonEventbusEventBus_LoggingHandler)

ComGoogleCommonEventbusEventBus_LoggingHandler *ComGoogleCommonEventbusEventBus_LoggingHandler_INSTANCE;

@implementation ComGoogleCommonEventbusEventBus_LoggingHandler

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonEventbusEventBus_LoggingHandler_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)handleExceptionWithNSException:(NSException *)exception
withComGoogleCommonEventbusSubscriberExceptionContext:(ComGoogleCommonEventbusSubscriberExceptionContext *)context {
  JavaUtilLoggingLogger *logger = ComGoogleCommonEventbusEventBus_LoggingHandler_loggerWithComGoogleCommonEventbusSubscriberExceptionContext_(context);
  if ([((JavaUtilLoggingLogger *) nil_chk(logger)) isLoggableWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, SEVERE)]) {
    [logger logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, SEVERE) withNSString:ComGoogleCommonEventbusEventBus_LoggingHandler_messageWithComGoogleCommonEventbusSubscriberExceptionContext_(context) withNSException:exception];
  }
}

+ (JavaUtilLoggingLogger *)loggerWithComGoogleCommonEventbusSubscriberExceptionContext:(ComGoogleCommonEventbusSubscriberExceptionContext *)context {
  return ComGoogleCommonEventbusEventBus_LoggingHandler_loggerWithComGoogleCommonEventbusSubscriberExceptionContext_(context);
}

+ (NSString *)messageWithComGoogleCommonEventbusSubscriberExceptionContext:(ComGoogleCommonEventbusSubscriberExceptionContext *)context {
  return ComGoogleCommonEventbusEventBus_LoggingHandler_messageWithComGoogleCommonEventbusSubscriberExceptionContext_(context);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilLoggingLogger;", 0xa, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 4, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(handleExceptionWithNSException:withComGoogleCommonEventbusSubscriberExceptionContext:);
  methods[2].selector = @selector(loggerWithComGoogleCommonEventbusSubscriberExceptionContext:);
  methods[3].selector = @selector(messageWithComGoogleCommonEventbusSubscriberExceptionContext:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LComGoogleCommonEventbusEventBus_LoggingHandler;", .constantValue.asLong = 0, 0x18, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "handleException", "LNSException;LComGoogleCommonEventbusSubscriberExceptionContext;", "logger", "LComGoogleCommonEventbusSubscriberExceptionContext;", "message", &ComGoogleCommonEventbusEventBus_LoggingHandler_INSTANCE, "LComGoogleCommonEventbusEventBus;" };
  static const J2ObjcClassInfo _ComGoogleCommonEventbusEventBus_LoggingHandler = { "LoggingHandler", "com.google.common.eventbus", ptrTable, methods, fields, 7, 0x18, 4, 1, 6, -1, -1, -1, -1 };
  return &_ComGoogleCommonEventbusEventBus_LoggingHandler;
}

+ (void)initialize {
  if (self == [ComGoogleCommonEventbusEventBus_LoggingHandler class]) {
    ComGoogleCommonEventbusEventBus_LoggingHandler_INSTANCE = new_ComGoogleCommonEventbusEventBus_LoggingHandler_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonEventbusEventBus_LoggingHandler)
  }
}

@end

void ComGoogleCommonEventbusEventBus_LoggingHandler_init(ComGoogleCommonEventbusEventBus_LoggingHandler *self) {
  NSObject_init(self);
}

ComGoogleCommonEventbusEventBus_LoggingHandler *new_ComGoogleCommonEventbusEventBus_LoggingHandler_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonEventbusEventBus_LoggingHandler, init)
}

ComGoogleCommonEventbusEventBus_LoggingHandler *create_ComGoogleCommonEventbusEventBus_LoggingHandler_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonEventbusEventBus_LoggingHandler, init)
}

JavaUtilLoggingLogger *ComGoogleCommonEventbusEventBus_LoggingHandler_loggerWithComGoogleCommonEventbusSubscriberExceptionContext_(ComGoogleCommonEventbusSubscriberExceptionContext *context) {
  ComGoogleCommonEventbusEventBus_LoggingHandler_initialize();
  return JavaUtilLoggingLogger_getLoggerWithNSString_(JreStrcat("$C$", [ComGoogleCommonEventbusEventBus_class_() getName], '.', ComGoogleCommonEventbusEventBus_identifier(nil_chk([((ComGoogleCommonEventbusSubscriberExceptionContext *) nil_chk(context)) getEventBus]))));
}

NSString *ComGoogleCommonEventbusEventBus_LoggingHandler_messageWithComGoogleCommonEventbusSubscriberExceptionContext_(ComGoogleCommonEventbusSubscriberExceptionContext *context) {
  ComGoogleCommonEventbusEventBus_LoggingHandler_initialize();
  JavaLangReflectMethod *method = [((ComGoogleCommonEventbusSubscriberExceptionContext *) nil_chk(context)) getSubscriberMethod];
  return JreStrcat("$$C$$@$@", @"Exception thrown by subscriber method ", [((JavaLangReflectMethod *) nil_chk(method)) getName], '(', [((IOSClass *) nil_chk(IOSObjectArray_Get(nil_chk([method getParameterTypes]), 0))) getName], @") on subscriber ", [context getSubscriber], @" when dispatching event: ", [context getEvent]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonEventbusEventBus_LoggingHandler)
