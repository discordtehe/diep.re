// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDADSESSIONSTATEPUBLISHER_H
#define GADOMIDADSESSIONSTATEPUBLISHER_H


#import <Foundation/Foundation.h>

@protocol GADOMIDCommandPublisher;

@interface GADOMIDAdSessionStatePublisher : NSObject

@property (readonly, nonatomic) NSObject<GADOMIDCommandPublisher> *commandPublisher; // ivar: _commandPublisher
@property (readonly, nonatomic) NSUInteger adState; // ivar: _adState
@property (readonly, nonatomic) CGFloat timestamp; // ivar: _timestamp


-(id)initWithCommandPublisher:(id)arg0 ;
-(void)cleanupAdState;
-(void)publishNativeViewStateWithHierarchy:(id)arg0 timestamp:(CGFloat)arg1 ;
-(void)publishEmptyNativeViewStateWithHierarchy:(id)arg0 timestamp:(CGFloat)arg1 ;
-(void)publishAppState:(id)arg0 ;
-(void)publishDeviceVolume:(CGFloat)arg0 ;


@end


#endif