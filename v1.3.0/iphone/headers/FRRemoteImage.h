// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRREMOTEIMAGE_H
#define FRREMOTEIMAGE_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FRRemoteImage : NSObject

@property (retain) NSString *url; // ivar: _url
@property (retain) UIImage *image; // ivar: _image
@property (retain) id *animatedImage; // ivar: _animatedImage


-(id)initWithRemoteUrl:(id)arg0 withDelegate:(id)arg1 ;
-(void)loadImageFromData:(id)arg0 ;
-(void)imageFromRemoteURL:(id)arg0 ;
+(id)objectWithRemoteUrl:(id)arg0 ;
+(id)objectWithRemoteUrl:(id)arg0 withDelegate:(id)arg1 ;
+(id)urlToFileName:(id)arg0 ;
+(id)getDateFromCacheMetaDataForKey:(id)arg0 ;
+(void)updateCacheMetaDataForKey:(id)arg0 age:(CGFloat)arg1 ;
+(void)removeCacheMetaDataFileToExpirationForKey:(id)arg0 ;
+(id)cacheImagePath;
+(id)cacheMetaDataFileToExpiration;
+(id)cacheMetaDataFileToUrl;
+(void)checkCaches;
+(void)clearCachedImage;
+(void)checkCachesInternal;
+(void)commitCacheMetaData;
+(void)commitCacheMetaDataNow;


@end


#endif