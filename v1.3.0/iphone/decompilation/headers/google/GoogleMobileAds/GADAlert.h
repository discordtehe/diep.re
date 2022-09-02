// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADALERT_H
#define GADALERT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class GADAlert;
@class GADEventContext;
@protocol UIAlertViewDelegate;
@protocol GADPresenting;

@interface GADAlert : NSObject <UIAlertViewDelegate, GADPresenting>

 {
    GADAlert *_retainCycle;
    NSMutableDictionary *_completionHandlersByButtonIndex;
    UIAlertView *_alertView;
    BOOL _alertShown;
    BOOL _alertTappedOrCancelled;
    BOOL _dismissedByUser;
    id *_presentationCompletionHandler;
    id *_dismissalCompletionHandler;
}


@property (copy, nonatomic) NSString *cancelButtonTitle; // ivar: _cancelButtonTitle
@property (copy, nonatomic) id *cancelHandler; // ivar: _cancelHandler
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context; // ivar: _context


-(id)initWithTitle:(id)arg0 message:(id)arg1 parentContext:(id)arg2 ;
-(void)addButtonWithTitle:(id)arg0 handler:(id)arg1 ;
-(void)cancel;
-(void)presentFromViewController:(id)arg0 completion:(id)arg1 ;
-(void)relinquishScreenWithCompletion:(id)arg0 ;
-(BOOL)canPresent;
-(BOOL)shouldDismissOnApplicationEnteringForeground;
-(void)didPresentAlertView:(id)arg0 ;
-(void)alertView:(id)arg0 didDismissWithButtonIndex:(NSInteger)arg1 ;
-(void)alertViewCancel:(id)arg0 ;
-(void)alertView:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;


@end


#endif