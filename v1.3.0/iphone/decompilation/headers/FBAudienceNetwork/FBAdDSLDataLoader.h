// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDSLDATALOADER_H
#define FBADDSLDATALOADER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol FBAdDSLDataLoaderDelegate;

@interface FBAdDSLDataLoader : NSObject

@property (retain, nonatomic) NSURL *downloadsDirectoryURL; // ivar: _downloadsDirectoryURL
@property (weak, nonatomic) NSObject<FBAdDSLDataLoaderDelegate> *delegate; // ivar: _delegate


-(void)createDownloadDirectory;
-(void)loadAssetsInModel:(id)arg0 ;


@end


#endif