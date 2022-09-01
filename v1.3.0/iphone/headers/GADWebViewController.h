// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWEBVIEWCONTROLLER_H
#define GADWEBVIEWCONTROLLER_H

@class UIView<GADWebView>;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADEventContext;
@class GADWebViewConfiguration;
@protocol GADEventContextSource;
@protocol GADWebViewControllerDelegate;

@interface GADWebViewController : NSObject <GADEventContextSource>

 {
    GADEventContext *_context;
}


@property (readonly, nonatomic) UIView<GADWebView> *webView; // ivar: _webView
@property (readonly, nonatomic) id *underlyingWebView; // ivar: _underlyingWebView
@property (weak, nonatomic) NSObject<GADWebViewControllerDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) GADWebViewConfiguration *configuration; // ivar: _configuration
@property (readonly, copy, nonatomic) NSURL *mainDocumentURL; // ivar: _mainDocumentURL
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithFrame:(struct CGRect )arg0 eventContext:(id)arg1 configuration:(id)arg2 ;
+(void)initialize;
+(id)allocWithZone:(struct _NSZone *)arg0 ;


@end


#endif