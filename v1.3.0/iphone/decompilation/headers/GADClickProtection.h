// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCLICKPROTECTION_H
#define GADCLICKPROTECTION_H


#import <Foundation/Foundation.h>

@class GADAd;
@protocol UIGestureRecognizerDelegate;

@interface GADClickProtection : NSObject <UIGestureRecognizerDelegate>

 {
    BOOL _autoClickEnabled;
    uint8_t _touched;
    NSString *_debugDialogString;
    GADAd *_ad;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithAd:(id)arg0 view:(id)arg1 autoClickProtectionEnabled:(BOOL)arg2 debugDialogString:(id)arg3 ;
-(BOOL)shouldAllowClickAction;
-(void)reportBlockedOpenActionWithNavigationURL:(id)arg0 sourceURL:(id)arg1 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldReceiveTouch:(id)arg1 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;


@end


#endif