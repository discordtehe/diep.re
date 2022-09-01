// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCHOICESBUTTON_H
#define FBADCHOICESBUTTON_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol FBAdSafariViewControllerDelegate;

@interface FBAdChoicesButton : UIButton <FBAdSafariViewControllerDelegate>



@property (copy, nonatomic) NSString *adChoicesText; // ivar: _adChoicesText
@property (copy, nonatomic) NSString *cancelText; // ivar: _cancelText
@property (copy, nonatomic) NSURL *adChoicesLinkURL; // ivar: _adChoicesLinkURL
@property (copy, nonatomic) NSString *inlineClientToken; // ivar: _inlineClientToken
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (copy, nonatomic) UIColor *iconColor; // ivar: _iconColor
@property (copy, nonatomic) id *willPresentActionSheet; // ivar: _willPresentActionSheet
@property (copy, nonatomic) id *willDismissActionSheet; // ivar: _willDismissActionSheet
@property (copy, nonatomic) id *willPresentViewController; // ivar: _willPresentViewController
@property (copy, nonatomic) id *viewControllerCompleted; // ivar: _viewControllerCompleted
@property (copy, nonatomic) id *viewControllerDismissed; // ivar: _viewControllerDismissed
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)configureWithText:(id)arg0 cancelText:(id)arg1 url:(id)arg2 inlineClientToken:(id)arg3 rootViewController:(id)arg4 ;
-(void)didTap;
-(void)presentAdChoicesViewController;
-(void)drawRect:(struct CGRect )arg0 ;
-(void)willPresentViewController:(id)arg0 ;
-(void)viewControllerCompleted:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
+(void)initialize;
+(id)adChoicesButton;


@end


#endif