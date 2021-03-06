//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/AbstractIdleService.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Supplier.h"
#include "com/google/common/util/concurrent/AbstractIdleService.h"
#include "com/google/common/util/concurrent/AbstractService.h"
#include "com/google/common/util/concurrent/MoreExecutors.h"
#include "com/google/common/util/concurrent/Service.h"
#include "java/lang/Runnable.h"
#include "java/lang/Thread.h"
#include "java/util/concurrent/Executor.h"
#include "java/util/concurrent/TimeUnit.h"

@interface ComGoogleCommonUtilConcurrentAbstractIdleService () {
 @public
  id<ComGoogleCommonBaseSupplier> threadNameSupplier_;
  id<ComGoogleCommonUtilConcurrentService> delegate_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonUtilConcurrentAbstractIdleService, threadNameSupplier_, id<ComGoogleCommonBaseSupplier>)
J2OBJC_FIELD_SETTER(ComGoogleCommonUtilConcurrentAbstractIdleService, delegate_, id<ComGoogleCommonUtilConcurrentService>)

__attribute__((unused)) static ComGoogleCommonUtilConcurrentService_State *ComGoogleCommonUtilConcurrentAbstractIdleService_state(ComGoogleCommonUtilConcurrentAbstractIdleService *self);

@interface ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier : NSObject < ComGoogleCommonBaseSupplier > {
 @public
  __unsafe_unretained ComGoogleCommonUtilConcurrentAbstractIdleService *this$0_;
}

- (instancetype)initWithComGoogleCommonUtilConcurrentAbstractIdleService:(ComGoogleCommonUtilConcurrentAbstractIdleService *)outer$;

- (NSString *)get;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier *self, ComGoogleCommonUtilConcurrentAbstractIdleService *outer$);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier *new_ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier *create_ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier)

@interface ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService : ComGoogleCommonUtilConcurrentAbstractService {
 @public
  __unsafe_unretained ComGoogleCommonUtilConcurrentAbstractIdleService *this$0_;
}

- (instancetype)initWithComGoogleCommonUtilConcurrentAbstractIdleService:(ComGoogleCommonUtilConcurrentAbstractIdleService *)outer$;

- (void)doStart;

- (void)doStop;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *self, ComGoogleCommonUtilConcurrentAbstractIdleService *outer$);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *new_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *create_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService)

@interface ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1 : NSObject < JavaLangRunnable > {
 @public
  ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *this$0_;
}

- (instancetype)initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService:(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *)outer$;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1 *self, ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1 *new_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1 *create_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$);

@interface ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2 : NSObject < JavaLangRunnable > {
 @public
  ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *this$0_;
}

- (instancetype)initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService:(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *)outer$;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2 *self, ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2 *new_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2 *create_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$);

@interface ComGoogleCommonUtilConcurrentAbstractIdleService_1 : NSObject < JavaUtilConcurrentExecutor > {
 @public
  ComGoogleCommonUtilConcurrentAbstractIdleService *this$0_;
}

- (instancetype)initWithComGoogleCommonUtilConcurrentAbstractIdleService:(ComGoogleCommonUtilConcurrentAbstractIdleService *)outer$;

- (void)executeWithJavaLangRunnable:(id<JavaLangRunnable>)command;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentAbstractIdleService_1)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentAbstractIdleService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService_1 *self, ComGoogleCommonUtilConcurrentAbstractIdleService *outer$);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractIdleService_1 *new_ComGoogleCommonUtilConcurrentAbstractIdleService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentAbstractIdleService_1 *create_ComGoogleCommonUtilConcurrentAbstractIdleService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$);

@implementation ComGoogleCommonUtilConcurrentAbstractIdleService

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonUtilConcurrentAbstractIdleService_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)startUp {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)shutDown {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id<JavaUtilConcurrentExecutor>)executor {
  return new_ComGoogleCommonUtilConcurrentAbstractIdleService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(self);
}

- (NSString *)description {
  return JreStrcat("$$@C", [self serviceName], @" [", ComGoogleCommonUtilConcurrentAbstractIdleService_state(self), ']');
}

- (jboolean)isRunning {
  return [((id<ComGoogleCommonUtilConcurrentService>) nil_chk(delegate_)) isRunning];
}

- (ComGoogleCommonUtilConcurrentService_State *)state {
  return ComGoogleCommonUtilConcurrentAbstractIdleService_state(self);
}

- (void)addListenerWithComGoogleCommonUtilConcurrentService_Listener:(ComGoogleCommonUtilConcurrentService_Listener *)listener
                                      withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor {
  [((id<ComGoogleCommonUtilConcurrentService>) nil_chk(delegate_)) addListenerWithComGoogleCommonUtilConcurrentService_Listener:listener withJavaUtilConcurrentExecutor:executor];
}

- (NSException *)failureCause {
  return [((id<ComGoogleCommonUtilConcurrentService>) nil_chk(delegate_)) failureCause];
}

- (id<ComGoogleCommonUtilConcurrentService>)startAsync {
  (void) [((id<ComGoogleCommonUtilConcurrentService>) nil_chk(delegate_)) startAsync];
  return self;
}

- (id<ComGoogleCommonUtilConcurrentService>)stopAsync {
  (void) [((id<ComGoogleCommonUtilConcurrentService>) nil_chk(delegate_)) stopAsync];
  return self;
}

- (void)awaitRunning {
  [((id<ComGoogleCommonUtilConcurrentService>) nil_chk(delegate_)) awaitRunning];
}

- (void)awaitRunningWithLong:(jlong)timeout
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit {
  [((id<ComGoogleCommonUtilConcurrentService>) nil_chk(delegate_)) awaitRunningWithLong:timeout withJavaUtilConcurrentTimeUnit:unit];
}

- (void)awaitTerminated {
  [((id<ComGoogleCommonUtilConcurrentService>) nil_chk(delegate_)) awaitTerminated];
}

- (void)awaitTerminatedWithLong:(jlong)timeout
 withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit {
  [((id<ComGoogleCommonUtilConcurrentService>) nil_chk(delegate_)) awaitTerminatedWithLong:timeout withJavaUtilConcurrentTimeUnit:unit];
}

- (NSString *)serviceName {
  return [[self java_getClass] getSimpleName];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x404, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x404, -1, -1, 0, -1, -1, -1 },
    { NULL, "LJavaUtilConcurrentExecutor;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonUtilConcurrentService_State;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSException;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonUtilConcurrentService;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonUtilConcurrentService;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 4, 5, 6, -1, -1, -1 },
    { NULL, "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 7, 5, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(startUp);
  methods[2].selector = @selector(shutDown);
  methods[3].selector = @selector(executor);
  methods[4].selector = @selector(description);
  methods[5].selector = @selector(isRunning);
  methods[6].selector = @selector(state);
  methods[7].selector = @selector(addListenerWithComGoogleCommonUtilConcurrentService_Listener:withJavaUtilConcurrentExecutor:);
  methods[8].selector = @selector(failureCause);
  methods[9].selector = @selector(startAsync);
  methods[10].selector = @selector(stopAsync);
  methods[11].selector = @selector(awaitRunning);
  methods[12].selector = @selector(awaitRunningWithLong:withJavaUtilConcurrentTimeUnit:);
  methods[13].selector = @selector(awaitTerminated);
  methods[14].selector = @selector(awaitTerminatedWithLong:withJavaUtilConcurrentTimeUnit:);
  methods[15].selector = @selector(serviceName);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "threadNameSupplier_", "LComGoogleCommonBaseSupplier;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
    { "delegate_", "LComGoogleCommonUtilConcurrentService;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;", "toString", "addListener", "LComGoogleCommonUtilConcurrentService_Listener;LJavaUtilConcurrentExecutor;", "awaitRunning", "JLJavaUtilConcurrentTimeUnit;", "LJavaUtilConcurrentTimeoutException;", "awaitTerminated", "Lcom/google/common/base/Supplier<Ljava/lang/String;>;", "LComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier;LComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentAbstractIdleService = { "AbstractIdleService", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x401, 16, 2, -1, 9, -1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentAbstractIdleService;
}

@end

void ComGoogleCommonUtilConcurrentAbstractIdleService_init(ComGoogleCommonUtilConcurrentAbstractIdleService *self) {
  NSObject_init(self);
  self->threadNameSupplier_ = new_ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(self);
  self->delegate_ = new_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(self);
}

ComGoogleCommonUtilConcurrentService_State *ComGoogleCommonUtilConcurrentAbstractIdleService_state(ComGoogleCommonUtilConcurrentAbstractIdleService *self) {
  return [((id<ComGoogleCommonUtilConcurrentService>) nil_chk(self->delegate_)) state];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentAbstractIdleService)

@implementation ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier

- (instancetype)initWithComGoogleCommonUtilConcurrentAbstractIdleService:(ComGoogleCommonUtilConcurrentAbstractIdleService *)outer$ {
  ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(self, outer$);
  return self;
}

- (NSString *)get {
  return JreStrcat("$C@", [this$0_ serviceName], ' ', ComGoogleCommonUtilConcurrentAbstractIdleService_state(this$0_));
}

- (void)__javaClone:(ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier *)original {
  [super __javaClone:original];
  JreRelease(this$0_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentAbstractIdleService:);
  methods[1].selector = @selector(get);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LComGoogleCommonUtilConcurrentAbstractIdleService;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonUtilConcurrentAbstractIdleService;", "Ljava/lang/Object;Lcom/google/common/base/Supplier<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier = { "ThreadNameSupplier", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x12, 2, 1, 0, -1, -1, 1, -1 };
  return &_ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier;
}

@end

void ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier *self, ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier *new_ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier, initWithComGoogleCommonUtilConcurrentAbstractIdleService_, outer$)
}

ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier *create_ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier, initWithComGoogleCommonUtilConcurrentAbstractIdleService_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentAbstractIdleService_ThreadNameSupplier)

@implementation ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService

- (instancetype)initWithComGoogleCommonUtilConcurrentAbstractIdleService:(ComGoogleCommonUtilConcurrentAbstractIdleService *)outer$ {
  ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(self, outer$);
  return self;
}

- (void)doStart {
  [((id<JavaUtilConcurrentExecutor>) nil_chk(ComGoogleCommonUtilConcurrentMoreExecutors_renamingDecoratorWithJavaUtilConcurrentExecutor_withComGoogleCommonBaseSupplier_([this$0_ executor], this$0_->threadNameSupplier_))) executeWithJavaLangRunnable:new_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(self)];
}

- (void)doStop {
  [((id<JavaUtilConcurrentExecutor>) nil_chk(ComGoogleCommonUtilConcurrentMoreExecutors_renamingDecoratorWithJavaUtilConcurrentExecutor_withComGoogleCommonBaseSupplier_([this$0_ executor], this$0_->threadNameSupplier_))) executeWithJavaLangRunnable:new_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(self)];
}

- (NSString *)description {
  return [this$0_ description];
}

- (void)__javaClone:(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *)original {
  [super __javaClone:original];
  JreRelease(this$0_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x14, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x14, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentAbstractIdleService:);
  methods[1].selector = @selector(doStart);
  methods[2].selector = @selector(doStop);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LComGoogleCommonUtilConcurrentAbstractIdleService;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "toString", "LComGoogleCommonUtilConcurrentAbstractIdleService;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService = { "DelegateService", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x12, 4, 1, 1, -1, -1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService;
}

@end

void ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *self, ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) {
  self->this$0_ = outer$;
  ComGoogleCommonUtilConcurrentAbstractService_init(self);
}

ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *new_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService, initWithComGoogleCommonUtilConcurrentAbstractIdleService_, outer$)
}

ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *create_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService, initWithComGoogleCommonUtilConcurrentAbstractIdleService_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService)

@implementation ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1

- (instancetype)initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService:(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *)outer$ {
  ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(self, outer$);
  return self;
}

- (void)run {
  @try {
    [this$0_->this$0_ startUp];
    [this$0_ notifyStarted];
  }
  @catch (NSException *t) {
    [this$0_ notifyFailedWithNSException:t];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService;", "doStart" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1 = { "", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x8018, 2, 1, 0, -1, 1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1;
}

@end

void ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1 *self, ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1 *new_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1, initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_, outer$)
}

ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1 *create_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_1, initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_, outer$)
}

@implementation ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2

- (instancetype)initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService:(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *)outer$ {
  ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(self, outer$);
  return self;
}

- (void)run {
  @try {
    [this$0_->this$0_ shutDown];
    [this$0_ notifyStopped];
  }
  @catch (NSException *t) {
    [this$0_ notifyFailedWithNSException:t];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService;", "doStop" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2 = { "", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x8018, 2, 1, 0, -1, 1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2;
}

@end

void ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2 *self, ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2 *new_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2, initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_, outer$)
}

ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2 *create_ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2_initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService *outer$) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_2, initWithComGoogleCommonUtilConcurrentAbstractIdleService_DelegateService_, outer$)
}

@implementation ComGoogleCommonUtilConcurrentAbstractIdleService_1

- (instancetype)initWithComGoogleCommonUtilConcurrentAbstractIdleService:(ComGoogleCommonUtilConcurrentAbstractIdleService *)outer$ {
  ComGoogleCommonUtilConcurrentAbstractIdleService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(self, outer$);
  return self;
}

- (void)executeWithJavaLangRunnable:(id<JavaLangRunnable>)command {
  [((JavaLangThread *) nil_chk(ComGoogleCommonUtilConcurrentMoreExecutors_newThreadWithNSString_withJavaLangRunnable_([((id<ComGoogleCommonBaseSupplier>) nil_chk(this$0_->threadNameSupplier_)) get], command))) start];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentAbstractIdleService:);
  methods[1].selector = @selector(executeWithJavaLangRunnable:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LComGoogleCommonUtilConcurrentAbstractIdleService;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "execute", "LJavaLangRunnable;", "LComGoogleCommonUtilConcurrentAbstractIdleService;", "executor" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentAbstractIdleService_1 = { "", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x8018, 2, 1, 2, -1, 3, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentAbstractIdleService_1;
}

@end

void ComGoogleCommonUtilConcurrentAbstractIdleService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService_1 *self, ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

ComGoogleCommonUtilConcurrentAbstractIdleService_1 *new_ComGoogleCommonUtilConcurrentAbstractIdleService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentAbstractIdleService_1, initWithComGoogleCommonUtilConcurrentAbstractIdleService_, outer$)
}

ComGoogleCommonUtilConcurrentAbstractIdleService_1 *create_ComGoogleCommonUtilConcurrentAbstractIdleService_1_initWithComGoogleCommonUtilConcurrentAbstractIdleService_(ComGoogleCommonUtilConcurrentAbstractIdleService *outer$) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentAbstractIdleService_1, initWithComGoogleCommonUtilConcurrentAbstractIdleService_, outer$)
}
