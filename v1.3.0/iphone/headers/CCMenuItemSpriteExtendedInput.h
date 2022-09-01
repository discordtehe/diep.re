// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUITEMSPRITEEXTENDEDINPUT_H
#define CCMENUITEMSPRITEEXTENDEDINPUT_H


#import <Foundation/Foundation.h>

@class CCMenuItemSprite;
@class Callback;
@protocol CCMenuItemExtendedInputProtocol;

@interface CCMenuItemSpriteExtendedInput : CCMenuItemSprite <CCMenuItemExtendedInputProtocol>



@property (readonly, nonatomic) Callback *touchBeganCallback; // ivar: mTouchBeganCallback
@property (readonly, nonatomic) Callback *touchEndedCallback; // ivar: mTouchEndedCallback
@property (readonly, nonatomic) Callback *touchCancelledCallback; // ivar: mTouchCancelledCallback
@property (readonly, nonatomic) Callback *touchMovedCallback; // ivar: mTouchMovedCallback
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
-(void)dealloc;
-(void)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 target:(id)arg2 selector:(SEL)arg3 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 block:(id)arg2 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 block:(id)arg3 ;


@end


#endif