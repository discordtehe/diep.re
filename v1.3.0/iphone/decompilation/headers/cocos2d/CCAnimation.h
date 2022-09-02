// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCANIMATION_H
#define CCANIMATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface CCAnimation : NSObject <NSCopying>



@property (readonly, nonatomic) float totalDelayUnits; // ivar: _totalDelayUnits
@property (nonatomic) float delayPerUnit; // ivar: _delayPerUnit
@property (readonly, nonatomic) float duration;
@property (retain, nonatomic) NSMutableArray *frames; // ivar: _frames
@property (nonatomic) BOOL restoreOriginalFrame; // ivar: _restoreOriginalFrame
@property (nonatomic) NSUInteger loops; // ivar: _loops


-(id)initWithFrames:(id)arg0 ;
-(id)initWithFrames:(id)arg0 delay:(float)arg1 ;
-(void)addFrame:(id)arg0 ;
-(void)addFrameWithFilename:(id)arg0 ;
-(void)addFrameWithTexture:(id)arg0 rect:(struct CGRect )arg1 ;
-(id)init;
-(id)initWithSpriteFrames:(id)arg0 ;
-(id)initWithSpriteFrames:(id)arg0 delay:(float)arg1 ;
-(id)initWithAnimationFrames:(id)arg0 delayPerUnit:(float)arg1 loops:(NSUInteger)arg2 ;
-(id)description;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)addSpriteFrame:(id)arg0 ;
-(void)addSpriteFrameWithFilename:(id)arg0 ;
-(void)addSpriteFrameWithTexture:(id)arg0 rect:(struct CGRect )arg1 ;
+(id)animationWithFrames:(id)arg0 ;
+(id)animationWithFrames:(id)arg0 delay:(float)arg1 ;
+(id)animation;
+(id)animationWithSpriteFrames:(id)arg0 ;
+(id)animationWithSpriteFrames:(id)arg0 delay:(float)arg1 ;
+(id)animationWithAnimationFrames:(id)arg0 delayPerUnit:(float)arg1 loops:(NSUInteger)arg2 ;


@end


#endif