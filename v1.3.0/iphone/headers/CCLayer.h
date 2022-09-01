// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLAYER_H
#define CCLAYER_H


#import <Foundation/Foundation.h>

@class CCNode;
@protocol CCAccelerometerDelegate;
@protocol CCTouchAllAtOnceDelegate;
@protocol CCTouchOneByOneDelegate;

@interface CCLayer : CCNode <CCAccelerometerDelegate, CCTouchAllAtOnceDelegate, CCTouchOneByOneDelegate>

 {
    BOOL _touchEnabled;
    NSInteger _touchPriority;
    BOOL _touchMode;
    BOOL _touchSwallow;
    BOOL _accelerometerEnabled;
}


@property (nonatomic, getter=isAccelerometerEnabled) BOOL accelerometerEnabled;
@property (nonatomic, getter=isTouchEnabled) BOOL touchEnabled;
@property (nonatomic) NSInteger touchPriority;
@property (nonatomic) int touchMode;
@property (nonatomic) BOOL touchSwallow;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setIsTouchEnabled:(BOOL)arg0 ;
-(void)setIsAccelerometerEnabled:(BOOL)arg0 ;
-(id)init;
-(void)registerWithTouchDispatcher;
-(void)setAccelerometerInterval:(float)arg0 ;
-(void)onEnter;
-(void)onEnterTransitionDidFinish;
-(void)onExit;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;


@end


#endif