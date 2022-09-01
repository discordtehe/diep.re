// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIEWCONTROLLERPROXY_H
#define FBADVIEWCONTROLLERPROXY_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FBAdViewControllerProxy : NSProxy {
    UIViewController *__fb_ad_viewController;
    UIView *__fb_ad_view;
}




-(id)initWithViewController:(id)arg0 withView:(id)arg1 ;
-(void)forwardInvocation:(id)arg0 ;
-(id)methodSignatureForSelector:(SEL)arg0 ;
-(id)currentViewController;
-(void)checkAndUpdateCurrentViewControllerWithCondition:(id)arg0 ;
-(BOOL)respondsToSelector:(SEL)arg0 ;
-(BOOL)conformsToProtocol:(id)arg0 ;
-(BOOL)isKindOfClass:(Class)arg0 ;
+(void)initialize;
+(id)viewController;
+(id)proxyWithViewController:(id)arg0 ;
+(id)proxyWithViewController:(id)arg0 withView:(id)arg1 ;
+(BOOL)isViewControllerProxy:(id)arg0 ;


@end


#endif