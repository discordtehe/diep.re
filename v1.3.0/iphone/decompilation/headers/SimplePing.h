// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SIMPLEPING_H
#define SIMPLEPING_H

@protocol SimplePingDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface SimplePing : NSObject {
    *__CFHost _host;
    *__CFSocket _socket;
}


@property (copy, nonatomic) NSData *hostAddress; // ivar: _hostAddress
@property (nonatomic) unsigned short nextSequenceNumber; // ivar: _nextSequenceNumber
@property (nonatomic) NSObject<SimplePingDelegate> *delegate; // ivar: _delegate
@property (readonly, copy, nonatomic) NSString *hostName; // ivar: _hostName
@property (readonly, nonatomic) unsigned short identifier; // ivar: _identifier


-(id)initWithHostName:(id)arg0 address:(id)arg1 ;
-(void)dealloc;
-(void)noop;
-(void)didFailWithError:(id)arg0 ;
-(void)didFailWithHostStreamError:(struct ? )arg0 ;
-(void)sendPingWithData:(id)arg0 ;
-(BOOL)isValidPingResponsePacket:(id)arg0 ;
-(void)readData;
-(void)startWithHostAddress;
-(void)hostResolutionDone;
-(void)start;
-(void)stopHostResolution;
-(void)stopDataTransfer;
-(void)stop;
+(id)simplePingWithHostName:(id)arg0 ;
+(id)simplePingWithHostAddress:(id)arg0 ;
+(NSUInteger)icmpHeaderOffsetInPacket:(id)arg0 ;
+(struct ICMPHeader *)icmpInPacket:(id)arg0 ;


@end


#endif