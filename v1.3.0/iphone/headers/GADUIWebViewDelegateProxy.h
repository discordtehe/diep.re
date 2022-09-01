// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADUIWEBVIEWDELEGATEPROXY_H
#define GADUIWEBVIEWDELEGATEPROXY_H


#import <Foundation/Foundation.h>

@protocol UIWebViewDelegate;
@protocol UIWebViewDelegate;

@interface GADUIWebViewDelegateProxy : NSObject <UIWebViewDelegate>



@property (weak, nonatomic) NSObject<UIWebViewDelegate> *webViewDelegate; // ivar: _webViewDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithWebViewDelegate:(id)arg0 ;
-(id)init;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewDidStartLoad:(id)arg0 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;


@end


#endif