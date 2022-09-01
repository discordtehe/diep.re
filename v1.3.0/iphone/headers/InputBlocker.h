// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef INPUTBLOCKER_H
#define INPUTBLOCKER_H



@class CCLayer;
@class Callback;

@interface InputBlocker : CCLayer {
    Callback *mCallback;
    BOOL mIsCallbackEnabled;
    BOOL mRegistered;
    int mPriority;
}




-(id)init;
-(id)initWithCallback:(id)arg0 isCallbackEnabled:(BOOL)arg1 priority:(int)arg2 ;
-(void)dealloc;
-(void)setCallback:(id)arg0 isCallbackEnabled:(BOOL)arg1 ;
-(void)enableCallback;
-(void)disableCallback;
-(void)enableInput;
-(void)disableInput;
-(void)onEnter;
-(void)onExit;
-(void)registerWithTouchDispatcher;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchesBegan:(id)arg0 withEvent:(id)arg1 ;
+(id)inputBlocker;
+(id)inputBlockerWithCallback:(id)arg0 isCallbackEnabled:(BOOL)arg1 priority:(int)arg2 ;
+(id)inputBlockerWithCallback:(id)arg0 isCallbackEnabled:(BOOL)arg1 ;


@end


#endif