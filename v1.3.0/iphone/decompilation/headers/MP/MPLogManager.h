// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPLOGMANAGER_H
#define MPLOGMANAGER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPConsoleLogger;

@interface MPLogManager : NSObject

@property (retain, nonatomic) MPConsoleLogger *consoleLogger; // ivar: _consoleLogger
@property (retain, nonatomic) NSMutableArray *loggers; // ivar: _loggers
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue
@property (nonatomic) NSUInteger consoleLogLevel;


-(id)init;
-(void)addLogger:(id)arg0 ;
-(void)removeLogger:(id)arg0 ;
-(void)logMessage:(id)arg0 atLogLevel:(NSUInteger)arg1 ;
-(void)logEvent:(id)arg0 source:(id)arg1 fromClass:(id)arg2 ;
+(id)sharedInstance;


@end


#endif