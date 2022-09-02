// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEUNZIPASSETOPERATION_H
#define VUNGLEUNZIPASSETOPERATION_H


#import <CoreFoundation/CoreFoundation.h>

@class VungleOperation;
@class VungleUnzipper;

@interface VungleUnzipAssetOperation : VungleOperation

@property (copy, nonatomic) NSURL *zippedAssetURL; // ivar: _zippedAssetURL
@property (copy, nonatomic) NSURL *outputURL; // ivar: _outputURL
@property (retain, nonatomic) VungleUnzipper *unzipper; // ivar: _unzipper
@property (copy, nonatomic) id *resultBlock; // ivar: _resultBlock


-(id)initWithAsset:(id)arg0 targetDirectory:(id)arg1 ;
-(id)initWithAsset:(id)arg0 targetDirectory:(id)arg1 resultBlock:(id)arg2 ;
-(id)initWithZipFileURL:(id)arg0 targetDirectoryURL:(id)arg1 ;
-(id)initWithZipFileURL:(id)arg0 targetDirectoryURL:(id)arg1 resultBlock:(id)arg2 ;
-(void)execute;


@end


#endif