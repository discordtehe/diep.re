// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISLOGGERMANAGER_H
#define ISLOGGERMANAGER_H


#import <Foundation/Foundation.h>

@class ISConsoleLogger;
@class ISPublisherLogger;
@class ISServerLogger;

@interface ISLoggerManager : NSObject {
    ISConsoleLogger *_consoleLogger;
    ISPublisherLogger *_publisherLogger;
    ISServerLogger *_serverLogger;
}




-(id)init;
-(void)log:(id)arg0 level:(int)arg1 tag:(int)arg2 ;
-(void)logFromError:(id)arg0 level:(int)arg1 tag:(int)arg2 ;
-(void)logFromException:(id)arg0 level:(int)arg1 tag:(int)arg2 ;
-(void)logFromException:(id)arg0 message:(id)arg1 level:(int)arg2 tag:(int)arg3 ;
-(void)addPublisherLogger:(id)arg0 ;
-(void)addServerLogger:(id)arg0 ;
-(void)setLoggingLevels:(NSInteger)arg0 publisher:(NSInteger)arg1 console:(NSInteger)arg2 ;
-(void)singleLoggerLog:(id)arg0 message:(id)arg1 level:(int)arg2 tag:(int)arg3 ;
-(void)logInternal:(id)arg0 level:(int)arg1 tag:(int)arg2 ;
-(id)getStringFromException:(id)arg0 message:(id)arg1 ;
+(id)sharedInstance;


@end


#endif