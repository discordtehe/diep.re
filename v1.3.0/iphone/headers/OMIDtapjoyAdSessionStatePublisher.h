// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYADSESSIONSTATEPUBLISHER_H
#define OMIDTAPJOYADSESSIONSTATEPUBLISHER_H


#import <Foundation/Foundation.h>

@protocol OMIDtapjoyCommandPublisher;

@interface OMIDtapjoyAdSessionStatePublisher : NSObject

@property (readonly, nonatomic) NSObject<OMIDtapjoyCommandPublisher> *commandPublisher; // ivar: _commandPublisher
@property (readonly, nonatomic) NSUInteger adState; // ivar: _adState
@property (readonly, nonatomic) CGFloat timestamp; // ivar: _timestamp


-(id)initWithCommandPublisher:(id)arg0 ;
-(void)cleanupAdState;
-(void)publishNativeViewStateWithCommand:(id)arg0 timestamp:(CGFloat)arg1 ;
-(void)publishEmptyNativeViewStateWithCommand:(id)arg0 timestamp:(CGFloat)arg1 ;
-(void)publishAppState:(id)arg0 ;
-(void)publishDeviceVolume:(CGFloat)arg0 ;


@end


#endif