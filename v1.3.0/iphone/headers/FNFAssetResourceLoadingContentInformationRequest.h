// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFASSETRESOURCELOADINGCONTENTINFORMATIONREQUEST_H
#define FNFASSETRESOURCELOADINGCONTENTINFORMATIONREQUEST_H


#import <Foundation/Foundation.h>


@interface FNFAssetResourceLoadingContentInformationRequest : NSObject

@property (nonatomic) NSInteger contentLength; // ivar: _contentLength
@property (copy, nonatomic) NSString *contentType; // ivar: _contentType
@property (nonatomic, getter=isByteRangeAccessSupported) BOOL byteRangeAccessSupported; // ivar: _byteRangeAccessSupported




@end


#endif