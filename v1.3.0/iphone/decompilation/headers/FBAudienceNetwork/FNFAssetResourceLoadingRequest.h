// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFASSETRESOURCELOADINGREQUEST_H
#define FNFASSETRESOURCELOADINGREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FNFAssetResourceLoadingContentInformationRequest;
@class FNFAssetResourceLoadingDataRequest;

@interface FNFAssetResourceLoadingRequest : NSObject {
    id *_completionCallback;
}


@property (readonly, nonatomic) NSURLRequest *request; // ivar: _request
@property (readonly, nonatomic) FNFAssetResourceLoadingContentInformationRequest *contentInformationRequest; // ivar: _contentInformationRequest
@property (readonly, nonatomic) FNFAssetResourceLoadingDataRequest *dataRequest; // ivar: _dataRequest
@property (copy, nonatomic) NSURLResponse *response; // ivar: _response
@property (copy, nonatomic) NSURLRequest *redirect; // ivar: _redirect
@property (copy, nonatomic) NSDictionary *metadataDictionary; // ivar: _metadataDictionary


-(id)initWithContentInformationRequest:(id)arg0 dataRequest:(id)arg1 urlRequest:(id)arg2 completionCallback:(id)arg3 ;
-(void)finishLoading;
-(void)finishLoadingWithError:(id)arg0 ;
-(void)finishLoadingWithMetadataDictionary:(id)arg0 ;


@end


#endif