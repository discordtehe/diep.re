// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDASLLOGGER_H
#define TR_DDASLLOGGER_H

@class DDAbstractLogger;
@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@protocol DDLogger;
@protocol DDLogFormatter;

@interface TR_DDASLLogger : DDAbstractLogger <DDLogger>

 {
    *__asl_object_s _client;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) NSObject<DDLogFormatter> *logFormatter;
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *loggerQueue;
@property (readonly, nonatomic) NSString *loggerName;


-(id)init;
-(void)logMessage:(id)arg0 ;
+(id)sharedInstance;


@end


#endif