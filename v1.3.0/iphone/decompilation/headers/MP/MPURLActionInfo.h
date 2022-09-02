// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPURLACTIONINFO_H
#define MPURLACTIONINFO_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPEnhancedDeeplinkRequest;

@interface MPURLActionInfo : NSObject

@property (nonatomic) NSUInteger actionType; // ivar: _actionType
@property (copy, nonatomic) NSURL *originalURL; // ivar: _originalURL
@property (retain, nonatomic) NSDictionary *iTunesStoreParameters; // ivar: _iTunesStoreParameters
@property (copy, nonatomic) NSURL *iTunesStoreFallbackURL; // ivar: _iTunesStoreFallbackURL
@property (copy, nonatomic) NSURL *safariDestinationURL; // ivar: _safariDestinationURL
@property (copy, nonatomic) NSString *HTTPResponseString; // ivar: _HTTPResponseString
@property (copy, nonatomic) NSURL *webViewBaseURL; // ivar: _webViewBaseURL
@property (copy, nonatomic) NSURL *deeplinkURL; // ivar: _deeplinkURL
@property (retain, nonatomic) MPEnhancedDeeplinkRequest *enhancedDeeplinkRequest; // ivar: _enhancedDeeplinkRequest
@property (copy, nonatomic) NSURL *shareURL; // ivar: _shareURL


+(id)infoWithURL:(id)arg0 iTunesStoreParameters:(id)arg1 iTunesStoreFallbackURL:(id)arg2 ;
+(id)infoWithURL:(id)arg0 safariDestinationURL:(id)arg1 ;
+(id)infoWithURL:(id)arg0 HTTPResponseString:(id)arg1 webViewBaseURL:(id)arg2 ;
+(id)infoWithURL:(id)arg0 webViewBaseURL:(id)arg1 ;
+(id)infoWithURL:(id)arg0 deeplinkURL:(id)arg1 ;
+(id)infoWithURL:(id)arg0 enhancedDeeplinkRequest:(id)arg1 ;
+(id)infoWithURL:(id)arg0 shareURL:(id)arg1 ;


@end


#endif