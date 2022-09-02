// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEWEBVIEWFACADE_H
#define VUNGLEWEBVIEWFACADE_H


#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import <UIKit/UIKit.h>


@interface VungleWebViewFacade : NSObject

@property (retain, nonatomic) WKWebView *webView; // ivar: _webView
@property (readonly, nonatomic) UIView *contentView;


-(id)init;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)dealloc;
-(void)resetWebContent;
-(void)loadFileURL:(id)arg0 baseURL:(id)arg1 ;
-(void)loadHTMLString:(id)arg0 ;
-(void)evaluateJavaScript:(id)arg0 completionHandler:(id)arg1 ;
+(BOOL)supportsWebKitFeatures;


@end


#endif