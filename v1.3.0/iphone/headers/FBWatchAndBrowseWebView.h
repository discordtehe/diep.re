// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBWATCHANDBROWSEWEBVIEW_H
#define FBWATCHANDBROWSEWEBVIEW_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>

@class FBAdWebViewNavigationPanel;
@class FBAdKVOController;
@protocol WKUIDelegate;
@protocol FBAdWebViewNavigationPanelDelegate;
@protocol FBWatchAndBrowseWebViewDelegate;

@interface FBWatchAndBrowseWebView : UIView <WKUIDelegate, FBAdWebViewNavigationPanelDelegate>



@property (weak, nonatomic) WKWebView *browseView; // ivar: _browseView
@property (weak, nonatomic) UIView *headerPanelView; // ivar: _headerPanelView
@property (weak, nonatomic) UILabel *pageTitleView; // ivar: _pageTitleView
@property (weak, nonatomic) UILabel *pageURLView; // ivar: _pageURLView
@property (copy, nonatomic) NSURL *targetURL; // ivar: _targetURL
@property (weak, nonatomic) UIProgressView *loadProgressView; // ivar: _loadProgressView
@property (weak, nonatomic) FBAdWebViewNavigationPanel *navigationPanelView; // ivar: _navigationPanelView
@property (nonatomic, getter=isURLLoaded) BOOL urlLoaded; // ivar: _urlLoaded
@property (readonly, nonatomic, getter=isURLLoading) BOOL urlLoading;
@property (weak, nonatomic) CALayer *bottomBorder; // ivar: _bottomBorder
@property (retain, nonatomic) FBAdKVOController *webViewKVOController; // ivar: _webViewKVOController
@property (weak, nonatomic) NSObject<FBWatchAndBrowseWebViewDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithURL:(id)arg0 ;
-(void)dealloc;
-(void)load;
-(void)setupHeaderPanelView;
-(void)setupPageTitleView;
-(void)setupPageURLView;
-(void)setupLoadProgressView;
-(void)setupWebView;
-(void)setupNavigationPanelView;
-(void)setupViews;
-(void)webPageLoadingProgessChanged;
-(void)webPageTitleChanged;
-(void)webPageURLChanged;
-(void)webPageLoadingStateChanged;
-(void)stopWebViewObservation;
-(void)setupNavigationButtons;
-(CGFloat)getLabelHeight:(id)arg0 ;
-(void)layoutSubviews;
-(void)webViewDidClose:(id)arg0 ;
-(void)goBack;
-(void)goForward;
-(void)openInExternalBrowser;


@end


#endif