// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDABSTRACTLOGGER_H
#define TR_DDABSTRACTLOGGER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@protocol DDLogger;
@protocol DDLogFormatter;
@protocol DDLogFormatter;

@interface TR_DDAbstractLogger : NSObject <DDLogger>

 {
    id<DDLogFormatter> *_logFormatter;
}


@property (retain, nonatomic) NSObject<DDLogFormatter> *logFormatter;
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *loggerQueue; // ivar: _loggerQueue
@property (readonly, nonatomic, getter=isOnGlobalLoggingQueue) BOOL onGlobalLoggingQueue;
@property (readonly, nonatomic, getter=isOnInternalLoggerQueue) BOOL onInternalLoggerQueue;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) NSString *loggerName;


-(id)init;
-(void)dealloc;
-(void)logMessage:(id)arg0 ;


@end


#endif