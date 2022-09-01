// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GDPRMANAGER_H
#define GDPRMANAGER_H


#import <Foundation/Foundation.h>


@interface GDPRManager : NSObject {
    ConsentData mTargetedAdsConsentData;
    id *mTarget;
    SEL mSelector;
    function<void ()> mCallback;
}


@property (readonly, nonatomic) BOOL isConsentGranted; // ivar: mIsConsentGranted
@property (readonly, nonatomic) BOOL isRelevant; // ivar: mIsRelevant


-(void)resetVariables;
-(void)initialize;
-(void)getData;
-(void)setUserAnswerFor:(int)arg0 withAnswer:(BOOL)arg1 ;
-(void)setTarget:(id)arg0 withSelector:(SEL)arg1 ;
-(void)removeTargetAndSelector;
-(void)setCallback:(struct function<void ()> )arg0 ;
-(void)removeCallback;
-(BOOL)shouldShowPopup;
-(void)dealloc;
+(id)gdprManager;


@end


#endif