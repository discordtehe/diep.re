// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBWATCHANDBROWSEACTIONCONTROLLER_H
#define FBWATCHANDBROWSEACTIONCONTROLLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class FBNativeAdDataModel;
@class FBWatchAndBrowseWebView;
@protocol FBWatchAndBrowseWebViewDelegate;
@protocol FBWatchAndActionActionableController;
@protocol FBWatchAndActionActionableControllerDelegate;

@interface FBWatchAndBrowseActionController : NSObject <FBWatchAndBrowseWebViewDelegate, FBWatchAndActionActionableController>



@property (retain, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (readonly, weak, nonatomic) NSURL *targetURL;
@property (readonly, nonatomic) FBWatchAndBrowseWebView *browseView; // ivar: _browseView
@property (weak, nonatomic) NSObject<FBWatchAndActionActionableControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIView *view;


-(void)makeWebView;
-(void)logError:(id)arg0 ;
-(BOOL)validateDataModel;
-(id)initWithDataModel:(id)arg0 ;
-(void)preloadContent;
-(void)prepareForPresentation;
-(void)webViewDidClose;


@end


#endif