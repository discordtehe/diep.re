// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDLOGGERNODE_H
#define TR_DDLOGGERNODE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@protocol DDLogger;

@interface TR_DDLoggerNode : NSObject

@property (readonly, nonatomic) NSObject<DDLogger> *logger; // ivar: _logger
@property (readonly, nonatomic) NSUInteger level; // ivar: _level
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *loggerQueue; // ivar: _loggerQueue


-(id)initWithLogger:(id)arg0 loggerQueue:(id)arg1 level:(NSUInteger)arg2 ;
-(void)dealloc;
+(id)nodeWithLogger:(id)arg0 loggerQueue:(id)arg1 level:(NSUInteger)arg2 ;


@end


#endif