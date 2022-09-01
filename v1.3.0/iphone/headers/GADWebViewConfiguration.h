// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWEBVIEWCONFIGURATION_H
#define GADWEBVIEWCONFIGURATION_H


#import <Foundation/Foundation.h>

@protocol NSCopying;

@interface GADWebViewConfiguration : NSObject <NSCopying>



@property (nonatomic) NSUInteger dataDetectorType; // ivar: _dataDetectorType
@property (nonatomic) BOOL mediaPlaybackRequiresUserAction; // ivar: _mediaPlaybackRequiresUserAction
@property (copy, nonatomic) NSString *webViewClassKey; // ivar: _webViewClassKey
@property (readonly, nonatomic) BOOL GMSGScriptHandlerEnabled; // ivar: _GMSGScriptHandlerEnabled
@property (copy, nonatomic) NSString *MRAIDURLString; // ivar: _MRAIDURLString
@property (nonatomic) BOOL collectDynamicContentSize; // ivar: _collectDynamicContentSize
@property (nonatomic) BOOL scrollEnabled; // ivar: _scrollEnabled
@property (readonly, nonatomic) BOOL resizeScriptEnabled; // ivar: _resizeScriptEnabled
@property (readonly, nonatomic) BOOL loadOnIframeScriptEnabled; // ivar: _loadOnIframeScriptEnabled
@property (nonatomic) BOOL networkNotificationsEnabled; // ivar: _networkNotificationsEnabled
@property (nonatomic) BOOL scalesPageToFit; // ivar: _scalesPageToFit
@property (nonatomic) BOOL augmentedRealityEnabled; // ivar: _augmentedRealityEnabled


-(id)initWithConfiguration:(id)arg0 ;
-(id)init;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif