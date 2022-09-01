// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCLOG_H
#define TJCLOG_H


#import <Foundation/Foundation.h>


@interface TJCLog : NSObject

@property (nonatomic) int logThreshold; // ivar: _logThreshold
@property (nonatomic) BOOL internalLogging; // ivar: _internalLogging
@property (nonatomic) BOOL publisherDidEnableLogging; // ivar: _publisherDidEnableLogging


-(id)init;
+(void)logWithBaseURL:(id)arg0 path:(id)arg1 params:(id)arg2 ;
+(void)logWithLevel:(int)arg0 format:(id)arg1 ;
+(void)enableLogging:(BOOL)arg0 ;
+(void)setServerLoggingLevel:(id)arg0 ;
+(void)clearServerLoggingLevel;


@end


#endif