// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIEWCONTROLLERPRESENTER_H
#define GADVIEWCONTROLLERPRESENTER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADEventContext;
@protocol GADPresenting;

@interface GADViewControllerPresenter : NSObject <GADPresenting>

 {
    UIViewController *_viewController;
    GADEventContext *_context;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithViewController:(id)arg0 context:(id)arg1 ;
-(id)init;
-(BOOL)canPresent;
-(void)presentFromViewController:(id)arg0 completion:(id)arg1 ;
-(BOOL)shouldDismissOnApplicationEnteringForeground;
-(void)relinquishScreenWithCompletion:(id)arg0 ;


@end


#endif