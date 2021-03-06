//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/SmoothRateLimiter.java
//

#include "J2ObjC_source.h"
#include "com/google/common/math/LongMath.h"
#include "com/google/common/util/concurrent/RateLimiter.h"
#include "com/google/common/util/concurrent/SmoothRateLimiter.h"
#include "java/lang/Double.h"
#include "java/lang/Math.h"
#include "java/util/concurrent/TimeUnit.h"

@interface ComGoogleCommonUtilConcurrentSmoothRateLimiter () {
 @public
  jlong nextFreeTicketMicros_;
}

- (instancetype)initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch:(ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *)stopwatch;

@end

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentSmoothRateLimiter_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_(ComGoogleCommonUtilConcurrentSmoothRateLimiter *self, ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *stopwatch);

@interface ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp () {
 @public
  jlong warmupPeriodMicros_;
  jdouble slope_;
  jdouble thresholdPermits_;
  jdouble coldFactor_;
}

- (jdouble)permitsToTimeWithDouble:(jdouble)permits;

@end

__attribute__((unused)) static jdouble ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp_permitsToTimeWithDouble_(ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp *self, jdouble permits);

@implementation ComGoogleCommonUtilConcurrentSmoothRateLimiter

- (instancetype)initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch:(ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *)stopwatch {
  ComGoogleCommonUtilConcurrentSmoothRateLimiter_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_(self, stopwatch);
  return self;
}

- (void)doSetRateWithDouble:(jdouble)permitsPerSecond
                   withLong:(jlong)nowMicros {
  [self resyncWithLong:nowMicros];
  jdouble stableIntervalMicros = [((JavaUtilConcurrentTimeUnit *) nil_chk(JreLoadEnum(JavaUtilConcurrentTimeUnit, SECONDS))) toMicrosWithLong:1LL] / permitsPerSecond;
  self->stableIntervalMicros_ = stableIntervalMicros;
  [self doSetRateWithDouble:permitsPerSecond withDouble:stableIntervalMicros];
}

- (void)doSetRateWithDouble:(jdouble)permitsPerSecond
                 withDouble:(jdouble)stableIntervalMicros {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jdouble)doGetRate {
  return [((JavaUtilConcurrentTimeUnit *) nil_chk(JreLoadEnum(JavaUtilConcurrentTimeUnit, SECONDS))) toMicrosWithLong:1LL] / stableIntervalMicros_;
}

- (jlong)queryEarliestAvailableWithLong:(jlong)nowMicros {
  return nextFreeTicketMicros_;
}

- (jlong)reserveEarliestAvailableWithInt:(jint)requiredPermits
                                withLong:(jlong)nowMicros {
  [self resyncWithLong:nowMicros];
  jlong returnValue = nextFreeTicketMicros_;
  jdouble storedPermitsToSpend = JavaLangMath_minWithDouble_withDouble_(requiredPermits, self->storedPermits_);
  jdouble freshPermits = requiredPermits - storedPermitsToSpend;
  jlong waitMicros = [self storedPermitsToWaitTimeWithDouble:self->storedPermits_ withDouble:storedPermitsToSpend] + JreFpToLong((freshPermits * stableIntervalMicros_));
  self->nextFreeTicketMicros_ = ComGoogleCommonMathLongMath_saturatedAddWithLong_withLong_(nextFreeTicketMicros_, waitMicros);
  JreMinusAssignDoubleD(&self->storedPermits_, storedPermitsToSpend);
  return returnValue;
}

- (jlong)storedPermitsToWaitTimeWithDouble:(jdouble)storedPermits
                                withDouble:(jdouble)permitsToTake {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jdouble)coolDownIntervalMicros {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)resyncWithLong:(jlong)nowMicros {
  if (nowMicros > nextFreeTicketMicros_) {
    jdouble newPermits = (nowMicros - nextFreeTicketMicros_) / [self coolDownIntervalMicros];
    storedPermits_ = JavaLangMath_minWithDouble_withDouble_(maxPermits_, storedPermits_ + newPermits);
    nextFreeTicketMicros_ = nowMicros;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x10, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x400, 1, 3, -1, -1, -1, -1 },
    { NULL, "D", 0x10, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x10, 4, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x10, 6, 7, -1, -1, -1, -1 },
    { NULL, "J", 0x400, 8, 3, -1, -1, -1, -1 },
    { NULL, "D", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 9, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch:);
  methods[1].selector = @selector(doSetRateWithDouble:withLong:);
  methods[2].selector = @selector(doSetRateWithDouble:withDouble:);
  methods[3].selector = @selector(doGetRate);
  methods[4].selector = @selector(queryEarliestAvailableWithLong:);
  methods[5].selector = @selector(reserveEarliestAvailableWithInt:withLong:);
  methods[6].selector = @selector(storedPermitsToWaitTimeWithDouble:withDouble:);
  methods[7].selector = @selector(coolDownIntervalMicros);
  methods[8].selector = @selector(resyncWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "storedPermits_", "D", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "maxPermits_", "D", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "stableIntervalMicros_", "D", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "nextFreeTicketMicros_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch;", "doSetRate", "DJ", "DD", "queryEarliestAvailable", "J", "reserveEarliestAvailable", "IJ", "storedPermitsToWaitTime", "resync", "LComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp;LComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentSmoothRateLimiter = { "SmoothRateLimiter", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x400, 9, 4, -1, 10, -1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentSmoothRateLimiter;
}

@end

void ComGoogleCommonUtilConcurrentSmoothRateLimiter_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_(ComGoogleCommonUtilConcurrentSmoothRateLimiter *self, ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *stopwatch) {
  ComGoogleCommonUtilConcurrentRateLimiter_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_(self, stopwatch);
  self->nextFreeTicketMicros_ = 0LL;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentSmoothRateLimiter)

@implementation ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp

- (instancetype)initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch:(ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *)stopwatch
                                                                          withLong:(jlong)warmupPeriod
                                                    withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)timeUnit
                                                                        withDouble:(jdouble)coldFactor {
  ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withLong_withJavaUtilConcurrentTimeUnit_withDouble_(self, stopwatch, warmupPeriod, timeUnit, coldFactor);
  return self;
}

- (void)doSetRateWithDouble:(jdouble)permitsPerSecond
                 withDouble:(jdouble)stableIntervalMicros {
  jdouble oldMaxPermits = maxPermits_;
  jdouble coldIntervalMicros = stableIntervalMicros * coldFactor_;
  thresholdPermits_ = 0.5 * warmupPeriodMicros_ / stableIntervalMicros;
  maxPermits_ = thresholdPermits_ + 2.0 * warmupPeriodMicros_ / (stableIntervalMicros + coldIntervalMicros);
  slope_ = (coldIntervalMicros - stableIntervalMicros) / (maxPermits_ - thresholdPermits_);
  if (oldMaxPermits == JavaLangDouble_POSITIVE_INFINITY) {
    storedPermits_ = 0.0;
  }
  else {
    storedPermits_ = (oldMaxPermits == 0.0) ? maxPermits_ : storedPermits_ * maxPermits_ / oldMaxPermits;
  }
}

- (jlong)storedPermitsToWaitTimeWithDouble:(jdouble)storedPermits
                                withDouble:(jdouble)permitsToTake {
  jdouble availablePermitsAboveThreshold = storedPermits - thresholdPermits_;
  jlong micros = 0;
  if (availablePermitsAboveThreshold > 0.0) {
    jdouble permitsAboveThresholdToTake = JavaLangMath_minWithDouble_withDouble_(availablePermitsAboveThreshold, permitsToTake);
    jdouble length = ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp_permitsToTimeWithDouble_(self, availablePermitsAboveThreshold) + ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp_permitsToTimeWithDouble_(self, availablePermitsAboveThreshold - permitsAboveThresholdToTake);
    micros = JreFpToLong((permitsAboveThresholdToTake * length / 2.0));
    JreMinusAssignDoubleD(&permitsToTake, permitsAboveThresholdToTake);
  }
  JrePlusAssignLongD(&micros, (stableIntervalMicros_ * permitsToTake));
  return micros;
}

- (jdouble)permitsToTimeWithDouble:(jdouble)permits {
  return ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp_permitsToTimeWithDouble_(self, permits);
}

- (jdouble)coolDownIntervalMicros {
  return warmupPeriodMicros_ / maxPermits_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 3, 2, -1, -1, -1, -1 },
    { NULL, "D", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "D", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch:withLong:withJavaUtilConcurrentTimeUnit:withDouble:);
  methods[1].selector = @selector(doSetRateWithDouble:withDouble:);
  methods[2].selector = @selector(storedPermitsToWaitTimeWithDouble:withDouble:);
  methods[3].selector = @selector(permitsToTimeWithDouble:);
  methods[4].selector = @selector(coolDownIntervalMicros);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "warmupPeriodMicros_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "slope_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "thresholdPermits_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "coldFactor_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch;JLJavaUtilConcurrentTimeUnit;D", "doSetRate", "DD", "storedPermitsToWaitTime", "permitsToTime", "D", "LComGoogleCommonUtilConcurrentSmoothRateLimiter;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp = { "SmoothWarmingUp", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x18, 5, 4, 6, -1, -1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp;
}

@end

void ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withLong_withJavaUtilConcurrentTimeUnit_withDouble_(ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp *self, ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *stopwatch, jlong warmupPeriod, JavaUtilConcurrentTimeUnit *timeUnit, jdouble coldFactor) {
  ComGoogleCommonUtilConcurrentSmoothRateLimiter_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_(self, stopwatch);
  self->warmupPeriodMicros_ = [((JavaUtilConcurrentTimeUnit *) nil_chk(timeUnit)) toMicrosWithLong:warmupPeriod];
  self->coldFactor_ = coldFactor;
}

ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp *new_ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withLong_withJavaUtilConcurrentTimeUnit_withDouble_(ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *stopwatch, jlong warmupPeriod, JavaUtilConcurrentTimeUnit *timeUnit, jdouble coldFactor) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp, initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withLong_withJavaUtilConcurrentTimeUnit_withDouble_, stopwatch, warmupPeriod, timeUnit, coldFactor)
}

ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp *create_ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withLong_withJavaUtilConcurrentTimeUnit_withDouble_(ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *stopwatch, jlong warmupPeriod, JavaUtilConcurrentTimeUnit *timeUnit, jdouble coldFactor) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp, initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withLong_withJavaUtilConcurrentTimeUnit_withDouble_, stopwatch, warmupPeriod, timeUnit, coldFactor)
}

jdouble ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp_permitsToTimeWithDouble_(ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp *self, jdouble permits) {
  return self->stableIntervalMicros_ + permits * self->slope_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothWarmingUp)

@implementation ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty

- (instancetype)initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch:(ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *)stopwatch
                                                                        withDouble:(jdouble)maxBurstSeconds {
  ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withDouble_(self, stopwatch, maxBurstSeconds);
  return self;
}

- (void)doSetRateWithDouble:(jdouble)permitsPerSecond
                 withDouble:(jdouble)stableIntervalMicros {
  jdouble oldMaxPermits = self->maxPermits_;
  maxPermits_ = maxBurstSeconds_ * permitsPerSecond;
  if (oldMaxPermits == JavaLangDouble_POSITIVE_INFINITY) {
    storedPermits_ = maxPermits_;
  }
  else {
    storedPermits_ = (oldMaxPermits == 0.0) ? 0.0 : storedPermits_ * maxPermits_ / oldMaxPermits;
  }
}

- (jlong)storedPermitsToWaitTimeWithDouble:(jdouble)storedPermits
                                withDouble:(jdouble)permitsToTake {
  return 0LL;
}

- (jdouble)coolDownIntervalMicros {
  return stableIntervalMicros_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 3, 2, -1, -1, -1, -1 },
    { NULL, "D", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch:withDouble:);
  methods[1].selector = @selector(doSetRateWithDouble:withDouble:);
  methods[2].selector = @selector(storedPermitsToWaitTimeWithDouble:withDouble:);
  methods[3].selector = @selector(coolDownIntervalMicros);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "maxBurstSeconds_", "D", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch;D", "doSetRate", "DD", "storedPermitsToWaitTime", "LComGoogleCommonUtilConcurrentSmoothRateLimiter;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty = { "SmoothBursty", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x18, 4, 1, 4, -1, -1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty;
}

@end

void ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withDouble_(ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty *self, ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *stopwatch, jdouble maxBurstSeconds) {
  ComGoogleCommonUtilConcurrentSmoothRateLimiter_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_(self, stopwatch);
  self->maxBurstSeconds_ = maxBurstSeconds;
}

ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty *new_ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withDouble_(ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *stopwatch, jdouble maxBurstSeconds) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty, initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withDouble_, stopwatch, maxBurstSeconds)
}

ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty *create_ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty_initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withDouble_(ComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch *stopwatch, jdouble maxBurstSeconds) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty, initWithComGoogleCommonUtilConcurrentRateLimiter_SleepingStopwatch_withDouble_, stopwatch, maxBurstSeconds)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentSmoothRateLimiter_SmoothBursty)
