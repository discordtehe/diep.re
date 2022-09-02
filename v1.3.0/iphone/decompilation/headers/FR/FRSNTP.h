// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRSNTP_H
#define FRSNTP_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FRSNTP : NSObject

@property BOOL bInProgress; // ivar: _bInProgress
@property BOOL bActive; // ivar: _bActive
@property ntpTimestamp clientSendTime; // ivar: _clientSendTime
@property ntpTimestamp clientRecvTime; // ivar: _clientRecvTime
@property ntpTimestamp serverRecvTime; // ivar: _serverRecvTime
@property ntpTimestamp serverSendTime; // ivar: _serverSendTime
@property NSInteger uptimeAtQueryNTP; // ivar: _uptimeAtQueryNTP
@property NSInteger uptimeAtReceiveNTP; // ivar: _uptimeAtReceiveNTP
@property (retain) NSDate *ntpTime; // ivar: _ntpTime


-(id)init;
-(id)resolveNTPServer;
-(void)queryNTP:(id)arg0 ;
+(void)activate;
+(void)inactivate;
+(BOOL)inProgress;
+(BOOL)isActive;
+(id)networkTime;
+(id)sharedInstance;
+(NSInteger)iOSUptime;


@end


#endif