// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDSLASSET_H
#define FBADDSLASSET_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdDSLAsset : NSObject

@property (readonly, nonatomic) NSDictionary *metaData; // ivar: _metaData
@property (readonly, nonatomic) NSString *fileName; // ivar: _fileName
@property (readonly, nonatomic) NSURL *remoteURL; // ivar: _remoteURL
@property (readonly, nonatomic) NSUInteger type; // ivar: _type


-(id)initWithAssetMetadata:(id)arg0 fileName:(id)arg1 withRemoteURLString:(id)arg2 withType:(NSUInteger)arg3 ;


@end


#endif