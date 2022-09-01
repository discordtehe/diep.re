// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUITEMLABELEXTENDEDINPUT_H
#define CCMENUITEMLABELEXTENDEDINPUT_H


#import <Foundation/Foundation.h>

@class CCMenuItemLabel;
@class Callback;
@protocol CCMenuItemExtendedInputProtocol;

@interface CCMenuItemLabelExtendedInput : CCMenuItemLabel <CCMenuItemExtendedInputProtocol>



@property (readonly, nonatomic) Callback *touchBeganCallback; // ivar: mTouchBeganCallback
@property (readonly, nonatomic) Callback *touchEndedCallback; // ivar: mTouchEndedCallback
@property (readonly, nonatomic) Callback *touchCancelledCallback; // ivar: mTouchCancelledCallback
@property (readonly, nonatomic) Callback *touchMovedCallback; // ivar: mTouchMovedCallback
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithLabel:(id)arg0 target:(id)arg1 selector:(SEL)arg2 ;
-(void)dealloc;
-(void)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
+(id)itemWithLabel:(id)arg0 target:(id)arg1 selector:(SEL)arg2 ;
+(id)itemWithLabel:(id)arg0 ;
+(id)itemWithLabel:(id)arg0 block:(id)arg1 ;


@end


#endif