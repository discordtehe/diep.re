// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJYMOATBRIDGE_H
#define TJYMOATBRIDGE_H


#import <QuartzCore/QuartzCore.h>

@class TJYMoatDecorator;

@interface TJYMoatBridge : TJYMoatDecorator

@property (weak) CALayer *target; // ivar: _target
@property (nonatomic) BOOL isFullScreen; // ivar: _isFullScreen
@property (retain) id *client; // ivar: _client
@property (nonatomic) int isNativeAd; // ivar: _isNativeAd


-(id)initWithDelegate:(id)arg0 target:(id)arg1 delegateProtocol:(id)arg2 forNativeAd:(BOOL)arg3 ;
-(void)markMoatActive;
-(BOOL)isMoatRequest:(id)arg0 ;
-(id)getResponseForMoatRequest:(id)arg0 ;
-(void)addDebugInfoTo:(id)arg0 windowId:(int)arg1 topLayer:(id)arg2 topLayerName:(id)arg3 window:(id)arg4 adLayer:(id)arg5 ;
-(id)getMetaData;
-(id)getJSEnvString;
+(id)logToConsole:(char *)arg0 ofSize:(int)arg1 ;
+(id)toJSON:(id)arg0 ;


@end


#endif