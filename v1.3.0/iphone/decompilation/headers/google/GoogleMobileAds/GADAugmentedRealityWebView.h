// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADAUGMENTEDREALITYWEBVIEW_H
#define GADAUGMENTEDREALITYWEBVIEW_H

@class GARArWebView;

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol GADWebView;

@interface GADAugmentedRealityWebView : UIView <GADWebView>

 {
    GARArWebView *_webViewContainer;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithWebView:(id)arg0 ;
-(BOOL)canGoBack;
-(BOOL)canGoForward;
-(void)goBack;
-(void)goForward;
-(BOOL)isLoading;
-(void)reload;
-(id)scrollView;
-(void)stopLoading;


@end


#endif