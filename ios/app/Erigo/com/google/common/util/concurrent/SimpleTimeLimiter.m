//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/SimpleTimeLimiter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/collect/ObjectArrays.h"
#include "com/google/common/collect/Sets.h"
#include "com/google/common/util/concurrent/ExecutionError.h"
#include "com/google/common/util/concurrent/SimpleTimeLimiter.h"
#include "com/google/common/util/concurrent/UncheckedExecutionException.h"
#include "com/google/common/util/concurrent/UncheckedTimeoutException.h"
#include "com/google/common/util/concurrent/Uninterruptibles.h"
#include "java/lang/AssertionError.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Error.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Runnable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StackTraceElement.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/reflect/InvocationHandler.h"
#include "java/lang/reflect/InvocationTargetException.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/Proxy.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "java/util/concurrent/Callable.h"
#include "java/util/concurrent/ExecutionException.h"
#include "java/util/concurrent/ExecutorService.h"
#include "java/util/concurrent/Executors.h"
#include "java/util/concurrent/Future.h"
#include "java/util/concurrent/TimeUnit.h"
#include "java/util/concurrent/TimeoutException.h"

@interface ComGoogleCommonUtilConcurrentSimpleTimeLimiter () {
 @public
  id<JavaUtilConcurrentExecutorService> executor_;
}

+ (JavaLangException *)throwCauseWithJavaLangException:(JavaLangException *)e
                                           withBoolean:(jboolean)combineStackTraces;

+ (id<JavaUtilSet>)findInterruptibleMethodsWithIOSClass:(IOSClass *)interfaceType;

+ (jboolean)declaresInterruptedExWithJavaLangReflectMethod:(JavaLangReflectMethod *)method;

+ (id)newProxyWithIOSClass:(IOSClass *)interfaceType
withJavaLangReflectInvocationHandler:(id<JavaLangReflectInvocationHandler>)handler OBJC_METHOD_FAMILY_NONE;

- (void)wrapAndThrowExecutionExceptionOrErrorWithNSException:(NSException *)cause;
#define wrapAndThrowExecutionExceptionOrErrorWithJavaLangThrowable wrapAndThrowExecutionExceptionOrErrorWithNSException

- (void)wrapAndThrowRuntimeExecutionExceptionOrErrorWithNSException:(NSException *)cause;
#define wrapAndThrowRuntimeExecutionExceptionOrErrorWithJavaLangThrowable wrapAndThrowRuntimeExecutionExceptionOrErrorWithNSException

+ (void)checkPositiveTimeoutWithLong:(jlong)timeoutDuration;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonUtilConcurrentSimpleTimeLimiter, executor_, id<JavaUtilConcurrentExecutorService>)

__attribute__((unused)) static JavaLangException *ComGoogleCommonUtilConcurrentSimpleTimeLimiter_throwCauseWithJavaLangException_withBoolean_(JavaLangException *e, jboolean combineStackTraces);

__attribute__((unused)) static id<JavaUtilSet> ComGoogleCommonUtilConcurrentSimpleTimeLimiter_findInterruptibleMethodsWithIOSClass_(IOSClass *interfaceType);

__attribute__((unused)) static jboolean ComGoogleCommonUtilConcurrentSimpleTimeLimiter_declaresInterruptedExWithJavaLangReflectMethod_(JavaLangReflectMethod *method);

__attribute__((unused)) static id ComGoogleCommonUtilConcurrentSimpleTimeLimiter_newProxyWithIOSClass_withJavaLangReflectInvocationHandler_(IOSClass *interfaceType, id<JavaLangReflectInvocationHandler> handler);

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_wrapAndThrowExecutionExceptionOrErrorWithNSException_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *self, NSException *cause);

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_wrapAndThrowRuntimeExecutionExceptionOrErrorWithNSException_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *self, NSException *cause);

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_checkPositiveTimeoutWithLong_(jlong timeoutDuration);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentSimpleTimeLimiter__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentSimpleTimeLimiter__Annotations$1();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentSimpleTimeLimiter__Annotations$2();

@interface ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 : NSObject < JavaLangReflectInvocationHandler > {
 @public
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter *this$0_;
  id val$target_;
  jlong val$timeoutDuration_;
  JavaUtilConcurrentTimeUnit *val$timeoutUnit_;
  id<JavaUtilSet> val$interruptibleMethods_;
}

- (instancetype)initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter:(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *)outer$
                                                                withId:(id)capture$0
                                                              withLong:(jlong)capture$1
                                        withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)capture$2
                                                       withJavaUtilSet:(id<JavaUtilSet>)capture$3;

- (id)invokeWithId:(id)obj
withJavaLangReflectMethod:(JavaLangReflectMethod *)method
 withNSObjectArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_withId_withLong_withJavaUtilConcurrentTimeUnit_withJavaUtilSet_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *self, ComGoogleCommonUtilConcurrentSimpleTimeLimiter *outer$, id capture$0, jlong capture$1, JavaUtilConcurrentTimeUnit *capture$2, id<JavaUtilSet> capture$3);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *new_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_withId_withLong_withJavaUtilConcurrentTimeUnit_withJavaUtilSet_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *outer$, id capture$0, jlong capture$1, JavaUtilConcurrentTimeUnit *capture$2, id<JavaUtilSet> capture$3) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *create_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_withId_withLong_withJavaUtilConcurrentTimeUnit_withJavaUtilSet_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *outer$, id capture$0, jlong capture$1, JavaUtilConcurrentTimeUnit *capture$2, id<JavaUtilSet> capture$3);

@interface ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1 : NSObject < JavaUtilConcurrentCallable > {
 @public
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *this$0_;
  JavaLangReflectMethod *val$method_;
  IOSObjectArray *val$args_;
}

- (instancetype)initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1:(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *)outer$
                                               withJavaLangReflectMethod:(JavaLangReflectMethod *)capture$0
                                                       withNSObjectArray:(IOSObjectArray *)capture$1;

- (id)call;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_withJavaLangReflectMethod_withNSObjectArray_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1 *self, ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *outer$, JavaLangReflectMethod *capture$0, IOSObjectArray *capture$1);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1 *new_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_withJavaLangReflectMethod_withNSObjectArray_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *outer$, JavaLangReflectMethod *capture$0, IOSObjectArray *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1 *create_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_withJavaLangReflectMethod_withNSObjectArray_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *outer$, JavaLangReflectMethod *capture$0, IOSObjectArray *capture$1);

@implementation ComGoogleCommonUtilConcurrentSimpleTimeLimiter

- (instancetype)initWithJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)executor {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initWithJavaUtilConcurrentExecutorService_(self, executor);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ComGoogleCommonUtilConcurrentSimpleTimeLimiter *)createWithJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)executor {
  return ComGoogleCommonUtilConcurrentSimpleTimeLimiter_createWithJavaUtilConcurrentExecutorService_(executor);
}

- (id)newProxyWithId:(id)target
        withIOSClass:(IOSClass *)interfaceType
            withLong:(jlong)timeoutDuration
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)timeoutUnit {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(target);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(interfaceType);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(timeoutUnit);
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_checkPositiveTimeoutWithLong_(timeoutDuration);
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withId_([((IOSClass *) nil_chk(interfaceType)) isInterface], @"interfaceType must be an interface type");
  id<JavaUtilSet> interruptibleMethods = ComGoogleCommonUtilConcurrentSimpleTimeLimiter_findInterruptibleMethodsWithIOSClass_(interfaceType);
  id<JavaLangReflectInvocationHandler> handler = new_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_withId_withLong_withJavaUtilConcurrentTimeUnit_withJavaUtilSet_(self, target, timeoutDuration, timeoutUnit, interruptibleMethods);
  return ComGoogleCommonUtilConcurrentSimpleTimeLimiter_newProxyWithIOSClass_withJavaLangReflectInvocationHandler_(interfaceType, handler);
}

- (id)callWithTimeoutWithJavaUtilConcurrentCallable:(id<JavaUtilConcurrentCallable>)callable
                                           withLong:(jlong)timeoutDuration
                     withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)timeoutUnit
                                        withBoolean:(jboolean)amInterruptible {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(callable);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(timeoutUnit);
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_checkPositiveTimeoutWithLong_(timeoutDuration);
  id<JavaUtilConcurrentFuture> future = [((id<JavaUtilConcurrentExecutorService>) nil_chk(executor_)) submitWithJavaUtilConcurrentCallable:callable];
  @try {
    if (amInterruptible) {
      @try {
        return [((id<JavaUtilConcurrentFuture>) nil_chk(future)) getWithLong:timeoutDuration withJavaUtilConcurrentTimeUnit:timeoutUnit];
      }
      @catch (JavaLangInterruptedException *e) {
        [future cancelWithBoolean:true];
        @throw e;
      }
    }
    else {
      return ComGoogleCommonUtilConcurrentUninterruptibles_getUninterruptiblyWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(future, timeoutDuration, timeoutUnit);
    }
  }
  @catch (JavaUtilConcurrentExecutionException *e) {
    @throw nil_chk(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_throwCauseWithJavaLangException_withBoolean_(e, true));
  }
  @catch (JavaUtilConcurrentTimeoutException *e) {
    [((id<JavaUtilConcurrentFuture>) nil_chk(future)) cancelWithBoolean:true];
    @throw new_ComGoogleCommonUtilConcurrentUncheckedTimeoutException_initWithNSException_(e);
  }
}

- (id)callWithTimeoutWithJavaUtilConcurrentCallable:(id<JavaUtilConcurrentCallable>)callable
                                           withLong:(jlong)timeoutDuration
                     withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)timeoutUnit {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(callable);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(timeoutUnit);
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_checkPositiveTimeoutWithLong_(timeoutDuration);
  id<JavaUtilConcurrentFuture> future = [((id<JavaUtilConcurrentExecutorService>) nil_chk(executor_)) submitWithJavaUtilConcurrentCallable:callable];
  @try {
    return [((id<JavaUtilConcurrentFuture>) nil_chk(future)) getWithLong:timeoutDuration withJavaUtilConcurrentTimeUnit:timeoutUnit];
  }
  @catch (JavaLangInterruptedException *e) {
    [future cancelWithBoolean:true];
    @throw e;
  }
  @catch (JavaUtilConcurrentTimeoutException *e) {
    [future cancelWithBoolean:true];
    @throw e;
  }
  @catch (JavaUtilConcurrentExecutionException *e) {
    ComGoogleCommonUtilConcurrentSimpleTimeLimiter_wrapAndThrowExecutionExceptionOrErrorWithNSException_(self, [e getCause]);
    @throw new_JavaLangAssertionError_init();
  }
}

- (id)callUninterruptiblyWithTimeoutWithJavaUtilConcurrentCallable:(id<JavaUtilConcurrentCallable>)callable
                                                          withLong:(jlong)timeoutDuration
                                    withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)timeoutUnit {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(callable);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(timeoutUnit);
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_checkPositiveTimeoutWithLong_(timeoutDuration);
  id<JavaUtilConcurrentFuture> future = [((id<JavaUtilConcurrentExecutorService>) nil_chk(executor_)) submitWithJavaUtilConcurrentCallable:callable];
  @try {
    return ComGoogleCommonUtilConcurrentUninterruptibles_getUninterruptiblyWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(future, timeoutDuration, timeoutUnit);
  }
  @catch (JavaUtilConcurrentTimeoutException *e) {
    [((id<JavaUtilConcurrentFuture>) nil_chk(future)) cancelWithBoolean:true];
    @throw e;
  }
  @catch (JavaUtilConcurrentExecutionException *e) {
    ComGoogleCommonUtilConcurrentSimpleTimeLimiter_wrapAndThrowExecutionExceptionOrErrorWithNSException_(self, [e getCause]);
    @throw new_JavaLangAssertionError_init();
  }
}

- (void)runWithTimeoutWithJavaLangRunnable:(id<JavaLangRunnable>)runnable
                                  withLong:(jlong)timeoutDuration
            withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)timeoutUnit {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(runnable);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(timeoutUnit);
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_checkPositiveTimeoutWithLong_(timeoutDuration);
  id<JavaUtilConcurrentFuture> future = [((id<JavaUtilConcurrentExecutorService>) nil_chk(executor_)) submitWithJavaLangRunnable:runnable];
  @try {
    (void) [((id<JavaUtilConcurrentFuture>) nil_chk(future)) getWithLong:timeoutDuration withJavaUtilConcurrentTimeUnit:timeoutUnit];
  }
  @catch (JavaLangInterruptedException *e) {
    [future cancelWithBoolean:true];
    @throw e;
  }
  @catch (JavaUtilConcurrentTimeoutException *e) {
    [future cancelWithBoolean:true];
    @throw e;
  }
  @catch (JavaUtilConcurrentExecutionException *e) {
    ComGoogleCommonUtilConcurrentSimpleTimeLimiter_wrapAndThrowRuntimeExecutionExceptionOrErrorWithNSException_(self, [e getCause]);
    @throw new_JavaLangAssertionError_init();
  }
}

- (void)runUninterruptiblyWithTimeoutWithJavaLangRunnable:(id<JavaLangRunnable>)runnable
                                                 withLong:(jlong)timeoutDuration
                           withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)timeoutUnit {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(runnable);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(timeoutUnit);
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_checkPositiveTimeoutWithLong_(timeoutDuration);
  id<JavaUtilConcurrentFuture> future = [((id<JavaUtilConcurrentExecutorService>) nil_chk(executor_)) submitWithJavaLangRunnable:runnable];
  @try {
    (void) ComGoogleCommonUtilConcurrentUninterruptibles_getUninterruptiblyWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(future, timeoutDuration, timeoutUnit);
  }
  @catch (JavaUtilConcurrentTimeoutException *e) {
    [((id<JavaUtilConcurrentFuture>) nil_chk(future)) cancelWithBoolean:true];
    @throw e;
  }
  @catch (JavaUtilConcurrentExecutionException *e) {
    ComGoogleCommonUtilConcurrentSimpleTimeLimiter_wrapAndThrowRuntimeExecutionExceptionOrErrorWithNSException_(self, [e getCause]);
    @throw new_JavaLangAssertionError_init();
  }
}

+ (JavaLangException *)throwCauseWithJavaLangException:(JavaLangException *)e
                                           withBoolean:(jboolean)combineStackTraces {
  return ComGoogleCommonUtilConcurrentSimpleTimeLimiter_throwCauseWithJavaLangException_withBoolean_(e, combineStackTraces);
}

+ (id<JavaUtilSet>)findInterruptibleMethodsWithIOSClass:(IOSClass *)interfaceType {
  return ComGoogleCommonUtilConcurrentSimpleTimeLimiter_findInterruptibleMethodsWithIOSClass_(interfaceType);
}

+ (jboolean)declaresInterruptedExWithJavaLangReflectMethod:(JavaLangReflectMethod *)method {
  return ComGoogleCommonUtilConcurrentSimpleTimeLimiter_declaresInterruptedExWithJavaLangReflectMethod_(method);
}

+ (id)newProxyWithIOSClass:(IOSClass *)interfaceType
withJavaLangReflectInvocationHandler:(id<JavaLangReflectInvocationHandler>)handler {
  return ComGoogleCommonUtilConcurrentSimpleTimeLimiter_newProxyWithIOSClass_withJavaLangReflectInvocationHandler_(interfaceType, handler);
}

- (void)wrapAndThrowExecutionExceptionOrErrorWithNSException:(NSException *)cause {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_wrapAndThrowExecutionExceptionOrErrorWithNSException_(self, cause);
}

- (void)wrapAndThrowRuntimeExecutionExceptionOrErrorWithNSException:(NSException *)cause {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_wrapAndThrowRuntimeExecutionExceptionOrErrorWithNSException_(self, cause);
}

+ (void)checkPositiveTimeoutWithLong:(jlong)timeoutDuration {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_checkPositiveTimeoutWithLong_(timeoutDuration);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, 1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, 2, -1 },
    { NULL, "LComGoogleCommonUtilConcurrentSimpleTimeLimiter;", 0x9, 3, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 4, 5, -1, 6, -1, -1 },
    { NULL, "LNSObject;", 0x1, 7, 8, 9, 10, 11, -1 },
    { NULL, "LNSObject;", 0x1, 7, 12, 13, 14, -1, -1 },
    { NULL, "LNSObject;", 0x1, 15, 12, 16, 14, -1, -1 },
    { NULL, "V", 0x1, 17, 18, 19, -1, -1, -1 },
    { NULL, "V", 0x1, 20, 18, 21, -1, -1, -1 },
    { NULL, "LJavaLangException;", 0xa, 22, 23, 9, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0xa, 24, 25, -1, 26, -1, -1 },
    { NULL, "Z", 0xa, 27, 28, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0xa, 4, 29, -1, 30, -1, -1 },
    { NULL, "V", 0x2, 31, 32, 33, -1, -1, -1 },
    { NULL, "V", 0x2, 34, 32, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 35, 36, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaUtilConcurrentExecutorService:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(createWithJavaUtilConcurrentExecutorService:);
  methods[3].selector = @selector(newProxyWithId:withIOSClass:withLong:withJavaUtilConcurrentTimeUnit:);
  methods[4].selector = @selector(callWithTimeoutWithJavaUtilConcurrentCallable:withLong:withJavaUtilConcurrentTimeUnit:withBoolean:);
  methods[5].selector = @selector(callWithTimeoutWithJavaUtilConcurrentCallable:withLong:withJavaUtilConcurrentTimeUnit:);
  methods[6].selector = @selector(callUninterruptiblyWithTimeoutWithJavaUtilConcurrentCallable:withLong:withJavaUtilConcurrentTimeUnit:);
  methods[7].selector = @selector(runWithTimeoutWithJavaLangRunnable:withLong:withJavaUtilConcurrentTimeUnit:);
  methods[8].selector = @selector(runUninterruptiblyWithTimeoutWithJavaLangRunnable:withLong:withJavaUtilConcurrentTimeUnit:);
  methods[9].selector = @selector(throwCauseWithJavaLangException:withBoolean:);
  methods[10].selector = @selector(findInterruptibleMethodsWithIOSClass:);
  methods[11].selector = @selector(declaresInterruptedExWithJavaLangReflectMethod:);
  methods[12].selector = @selector(newProxyWithIOSClass:withJavaLangReflectInvocationHandler:);
  methods[13].selector = @selector(wrapAndThrowExecutionExceptionOrErrorWithNSException:);
  methods[14].selector = @selector(wrapAndThrowRuntimeExecutionExceptionOrErrorWithNSException:);
  methods[15].selector = @selector(checkPositiveTimeoutWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "executor_", "LJavaUtilConcurrentExecutorService;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilConcurrentExecutorService;", (void *)&ComGoogleCommonUtilConcurrentSimpleTimeLimiter__Annotations$0, (void *)&ComGoogleCommonUtilConcurrentSimpleTimeLimiter__Annotations$1, "create", "newProxy", "LNSObject;LIOSClass;JLJavaUtilConcurrentTimeUnit;", "<T:Ljava/lang/Object;>(TT;Ljava/lang/Class<TT;>;JLjava/util/concurrent/TimeUnit;)TT;", "callWithTimeout", "LJavaUtilConcurrentCallable;JLJavaUtilConcurrentTimeUnit;Z", "LJavaLangException;", "<T:Ljava/lang/Object;>(Ljava/util/concurrent/Callable<TT;>;JLjava/util/concurrent/TimeUnit;Z)TT;", (void *)&ComGoogleCommonUtilConcurrentSimpleTimeLimiter__Annotations$2, "LJavaUtilConcurrentCallable;JLJavaUtilConcurrentTimeUnit;", "LJavaUtilConcurrentTimeoutException;LJavaLangInterruptedException;LJavaUtilConcurrentExecutionException;", "<T:Ljava/lang/Object;>(Ljava/util/concurrent/Callable<TT;>;JLjava/util/concurrent/TimeUnit;)TT;", "callUninterruptiblyWithTimeout", "LJavaUtilConcurrentTimeoutException;LJavaUtilConcurrentExecutionException;", "runWithTimeout", "LJavaLangRunnable;JLJavaUtilConcurrentTimeUnit;", "LJavaUtilConcurrentTimeoutException;LJavaLangInterruptedException;", "runUninterruptiblyWithTimeout", "LJavaUtilConcurrentTimeoutException;", "throwCause", "LJavaLangException;Z", "findInterruptibleMethods", "LIOSClass;", "(Ljava/lang/Class<*>;)Ljava/util/Set<Ljava/lang/reflect/Method;>;", "declaresInterruptedEx", "LJavaLangReflectMethod;", "LIOSClass;LJavaLangReflectInvocationHandler;", "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/reflect/InvocationHandler;)TT;", "wrapAndThrowExecutionExceptionOrError", "LNSException;", "LJavaUtilConcurrentExecutionException;", "wrapAndThrowRuntimeExecutionExceptionOrError", "checkPositiveTimeout", "J" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentSimpleTimeLimiter = { "SimpleTimeLimiter", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x11, 16, 1, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentSimpleTimeLimiter;
}

@end

void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initWithJavaUtilConcurrentExecutorService_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *self, id<JavaUtilConcurrentExecutorService> executor) {
  NSObject_init(self);
  self->executor_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(executor);
}

ComGoogleCommonUtilConcurrentSimpleTimeLimiter *new_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initWithJavaUtilConcurrentExecutorService_(id<JavaUtilConcurrentExecutorService> executor) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentSimpleTimeLimiter, initWithJavaUtilConcurrentExecutorService_, executor)
}

ComGoogleCommonUtilConcurrentSimpleTimeLimiter *create_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initWithJavaUtilConcurrentExecutorService_(id<JavaUtilConcurrentExecutorService> executor) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentSimpleTimeLimiter, initWithJavaUtilConcurrentExecutorService_, executor)
}

void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_init(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *self) {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initWithJavaUtilConcurrentExecutorService_(self, JavaUtilConcurrentExecutors_newCachedThreadPool());
}

ComGoogleCommonUtilConcurrentSimpleTimeLimiter *new_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentSimpleTimeLimiter, init)
}

ComGoogleCommonUtilConcurrentSimpleTimeLimiter *create_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentSimpleTimeLimiter, init)
}

ComGoogleCommonUtilConcurrentSimpleTimeLimiter *ComGoogleCommonUtilConcurrentSimpleTimeLimiter_createWithJavaUtilConcurrentExecutorService_(id<JavaUtilConcurrentExecutorService> executor) {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initialize();
  return new_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initWithJavaUtilConcurrentExecutorService_(executor);
}

JavaLangException *ComGoogleCommonUtilConcurrentSimpleTimeLimiter_throwCauseWithJavaLangException_withBoolean_(JavaLangException *e, jboolean combineStackTraces) {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initialize();
  NSException *cause = [((JavaLangException *) nil_chk(e)) getCause];
  if (cause == nil) {
    @throw e;
  }
  if (combineStackTraces) {
    IOSObjectArray *combined = ComGoogleCommonCollectObjectArrays_concatWithNSObjectArray_withNSObjectArray_withIOSClass_([cause getStackTrace], [e getStackTrace], JavaLangStackTraceElement_class_());
    [cause setStackTraceWithJavaLangStackTraceElementArray:combined];
  }
  if ([cause isKindOfClass:[JavaLangException class]]) {
    @throw (JavaLangException *) cast_chk(cause, [JavaLangException class]);
  }
  if ([cause isKindOfClass:[JavaLangError class]]) {
    @throw (JavaLangError *) cast_chk(cause, [JavaLangError class]);
  }
  @throw e;
}

id<JavaUtilSet> ComGoogleCommonUtilConcurrentSimpleTimeLimiter_findInterruptibleMethodsWithIOSClass_(IOSClass *interfaceType) {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initialize();
  id<JavaUtilSet> set = ComGoogleCommonCollectSets_newHashSet();
  {
    IOSObjectArray *a__ = [((IOSClass *) nil_chk(interfaceType)) getMethods];
    JavaLangReflectMethod * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaLangReflectMethod * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaLangReflectMethod *m = *b__++;
      if (ComGoogleCommonUtilConcurrentSimpleTimeLimiter_declaresInterruptedExWithJavaLangReflectMethod_(m)) {
        [((id<JavaUtilSet>) nil_chk(set)) addWithId:m];
      }
    }
  }
  return set;
}

jboolean ComGoogleCommonUtilConcurrentSimpleTimeLimiter_declaresInterruptedExWithJavaLangReflectMethod_(JavaLangReflectMethod *method) {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initialize();
  {
    IOSObjectArray *a__ = [((JavaLangReflectMethod *) nil_chk(method)) getExceptionTypes];
    IOSClass * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    IOSClass * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      IOSClass *exType = *b__++;
      if (exType == JavaLangInterruptedException_class_()) {
        return true;
      }
    }
  }
  return false;
}

id ComGoogleCommonUtilConcurrentSimpleTimeLimiter_newProxyWithIOSClass_withJavaLangReflectInvocationHandler_(IOSClass *interfaceType, id<JavaLangReflectInvocationHandler> handler) {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initialize();
  id object = JavaLangReflectProxy_newProxyInstanceWithJavaLangClassLoader_withIOSClassArray_withJavaLangReflectInvocationHandler_([((IOSClass *) nil_chk(interfaceType)) getClassLoader], [IOSObjectArray newArrayWithObjects:(id[]){ interfaceType } count:1 type:IOSClass_class_()], handler);
  return [interfaceType cast:object];
}

void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_wrapAndThrowExecutionExceptionOrErrorWithNSException_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *self, NSException *cause) {
  if ([cause isKindOfClass:[JavaLangError class]]) {
    @throw new_ComGoogleCommonUtilConcurrentExecutionError_initWithJavaLangError_((JavaLangError *) cast_chk(cause, [JavaLangError class]));
  }
  else if ([cause isKindOfClass:[JavaLangRuntimeException class]]) {
    @throw new_ComGoogleCommonUtilConcurrentUncheckedExecutionException_initWithNSException_(cause);
  }
  else {
    @throw new_JavaUtilConcurrentExecutionException_initWithNSException_(cause);
  }
}

void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_wrapAndThrowRuntimeExecutionExceptionOrErrorWithNSException_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *self, NSException *cause) {
  if ([cause isKindOfClass:[JavaLangError class]]) {
    @throw new_ComGoogleCommonUtilConcurrentExecutionError_initWithJavaLangError_((JavaLangError *) cast_chk(cause, [JavaLangError class]));
  }
  else {
    @throw new_ComGoogleCommonUtilConcurrentUncheckedExecutionException_initWithNSException_(cause);
  }
}

void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_checkPositiveTimeoutWithLong_(jlong timeoutDuration) {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_initialize();
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withLong_(timeoutDuration > 0, @"timeout must be positive: %s", timeoutDuration);
}

IOSObjectArray *ComGoogleCommonUtilConcurrentSimpleTimeLimiter__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonUtilConcurrentSimpleTimeLimiter__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonUtilConcurrentSimpleTimeLimiter__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentSimpleTimeLimiter)

@implementation ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1

- (instancetype)initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter:(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *)outer$
                                                                withId:(id)capture$0
                                                              withLong:(jlong)capture$1
                                        withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)capture$2
                                                       withJavaUtilSet:(id<JavaUtilSet>)capture$3 {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_withId_withLong_withJavaUtilConcurrentTimeUnit_withJavaUtilSet_(self, outer$, capture$0, capture$1, capture$2, capture$3);
  return self;
}

- (id)invokeWithId:(id)obj
withJavaLangReflectMethod:(JavaLangReflectMethod *)method
 withNSObjectArray:(IOSObjectArray *)args {
  id<JavaUtilConcurrentCallable> callable = new_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_withJavaLangReflectMethod_withNSObjectArray_(self, method, args);
  return [this$0_ callWithTimeoutWithJavaUtilConcurrentCallable:callable withLong:val$timeoutDuration_ withJavaUtilConcurrentTimeUnit:val$timeoutUnit_ withBoolean:[((id<JavaUtilSet>) nil_chk(val$interruptibleMethods_)) containsWithId:method]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter:withId:withLong:withJavaUtilConcurrentTimeUnit:withJavaUtilSet:);
  methods[1].selector = @selector(invokeWithId:withJavaLangReflectMethod:withNSObjectArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LComGoogleCommonUtilConcurrentSimpleTimeLimiter;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$target_", "LNSObject;", .constantValue.asLong = 0, 0x1012, -1, -1, 3, -1 },
    { "val$timeoutDuration_", "J", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$timeoutUnit_", "LJavaUtilConcurrentTimeUnit;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$interruptibleMethods_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x1012, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "invoke", "LNSObject;LJavaLangReflectMethod;[LNSObject;", "LNSException;", "TT;", "Ljava/util/Set<Ljava/lang/reflect/Method;>;", "LComGoogleCommonUtilConcurrentSimpleTimeLimiter;", "newProxyWithId:withIOSClass:withLong:withJavaUtilConcurrentTimeUnit:" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 = { "", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x8018, 2, 5, 5, -1, 6, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1;
}

@end

void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_withId_withLong_withJavaUtilConcurrentTimeUnit_withJavaUtilSet_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *self, ComGoogleCommonUtilConcurrentSimpleTimeLimiter *outer$, id capture$0, jlong capture$1, JavaUtilConcurrentTimeUnit *capture$2, id<JavaUtilSet> capture$3) {
  self->this$0_ = outer$;
  self->val$target_ = capture$0;
  self->val$timeoutDuration_ = capture$1;
  self->val$timeoutUnit_ = capture$2;
  self->val$interruptibleMethods_ = capture$3;
  NSObject_init(self);
}

ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *new_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_withId_withLong_withJavaUtilConcurrentTimeUnit_withJavaUtilSet_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *outer$, id capture$0, jlong capture$1, JavaUtilConcurrentTimeUnit *capture$2, id<JavaUtilSet> capture$3) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1, initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_withId_withLong_withJavaUtilConcurrentTimeUnit_withJavaUtilSet_, outer$, capture$0, capture$1, capture$2, capture$3)
}

ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *create_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_withId_withLong_withJavaUtilConcurrentTimeUnit_withJavaUtilSet_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter *outer$, id capture$0, jlong capture$1, JavaUtilConcurrentTimeUnit *capture$2, id<JavaUtilSet> capture$3) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1, initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_withId_withLong_withJavaUtilConcurrentTimeUnit_withJavaUtilSet_, outer$, capture$0, capture$1, capture$2, capture$3)
}

@implementation ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1

- (instancetype)initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1:(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *)outer$
                                               withJavaLangReflectMethod:(JavaLangReflectMethod *)capture$0
                                                       withNSObjectArray:(IOSObjectArray *)capture$1 {
  ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_withJavaLangReflectMethod_withNSObjectArray_(self, outer$, capture$0, capture$1);
  return self;
}

- (id)call {
  @try {
    return [((JavaLangReflectMethod *) nil_chk(val$method_)) invokeWithId:this$0_->val$target_ withNSObjectArray:val$args_];
  }
  @catch (JavaLangReflectInvocationTargetException *e) {
    @throw nil_chk(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_throwCauseWithJavaLangException_withBoolean_(e, false));
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1:withJavaLangReflectMethod:withNSObjectArray:);
  methods[1].selector = @selector(call);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LComGoogleCommonUtilConcurrentSimpleTimeLimiter_1;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$method_", "LJavaLangReflectMethod;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$args_", "[LNSObject;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;", "LComGoogleCommonUtilConcurrentSimpleTimeLimiter_1;", "invokeWithId:withJavaLangReflectMethod:withNSObjectArray:", "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1 = { "", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x8018, 2, 3, 1, -1, 2, 3, -1 };
  return &_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1;
}

@end

void ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_withJavaLangReflectMethod_withNSObjectArray_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1 *self, ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *outer$, JavaLangReflectMethod *capture$0, IOSObjectArray *capture$1) {
  self->this$0_ = outer$;
  self->val$method_ = capture$0;
  self->val$args_ = capture$1;
  NSObject_init(self);
}

ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1 *new_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_withJavaLangReflectMethod_withNSObjectArray_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *outer$, JavaLangReflectMethod *capture$0, IOSObjectArray *capture$1) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1, initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_withJavaLangReflectMethod_withNSObjectArray_, outer$, capture$0, capture$1)
}

ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1 *create_ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1_initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_withJavaLangReflectMethod_withNSObjectArray_(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1 *outer$, JavaLangReflectMethod *capture$0, IOSObjectArray *capture$1) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_1, initWithComGoogleCommonUtilConcurrentSimpleTimeLimiter_1_withJavaLangReflectMethod_withNSObjectArray_, outer$, capture$0, capture$1)
}