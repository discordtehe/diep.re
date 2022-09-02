// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJFLANIMATEDIMAGE_H
#define TJFLANIMATEDIMAGE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class TJFLAnimatedImage;

@interface TJFLAnimatedImage : NSObject

@property (readonly, nonatomic) NSUInteger frameCacheSizeOptimal; // ivar: _frameCacheSizeOptimal
@property (readonly, nonatomic, getter=isPredrawingEnabled) BOOL predrawingEnabled; // ivar: _predrawingEnabled
@property (nonatomic) NSUInteger frameCacheSizeMaxInternal; // ivar: _frameCacheSizeMaxInternal
@property (nonatomic) NSUInteger requestedFrameIndex; // ivar: _requestedFrameIndex
@property (readonly, nonatomic) NSUInteger posterImageFrameIndex; // ivar: _posterImageFrameIndex
@property (readonly, nonatomic) NSMutableDictionary *cachedFramesForIndexes; // ivar: _cachedFramesForIndexes
@property (readonly, nonatomic) NSMutableIndexSet *cachedFrameIndexes; // ivar: _cachedFrameIndexes
@property (readonly, nonatomic) NSMutableIndexSet *requestedFrameIndexes; // ivar: _requestedFrameIndexes
@property (readonly, nonatomic) NSIndexSet *allFramesIndexSet; // ivar: _allFramesIndexSet
@property (nonatomic) NSUInteger memoryWarningCount; // ivar: _memoryWarningCount
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *serialQueue; // ivar: _serialQueue
@property (readonly, nonatomic) *CGImageSource imageSource; // ivar: _imageSource
@property (readonly, nonatomic) TJFLAnimatedImage *weakProxy; // ivar: _weakProxy
@property (readonly, nonatomic) UIImage *posterImage; // ivar: _posterImage
@property (readonly, nonatomic) CGSize size; // ivar: _size
@property (readonly, nonatomic) NSUInteger loopCount; // ivar: _loopCount
@property (readonly, nonatomic) NSDictionary *delayTimesForIndexes; // ivar: _delayTimesForIndexes
@property (readonly, nonatomic) NSUInteger frameCount; // ivar: _frameCount
@property (readonly, nonatomic) NSUInteger frameCacheSizeCurrent;
@property (nonatomic) NSUInteger frameCacheSizeMax; // ivar: _frameCacheSizeMax
@property (readonly, nonatomic) NSData *data; // ivar: _data


-(id)init;
-(id)initWithAnimatedGIFData:(id)arg0 ;
-(id)initWithAnimatedGIFData:(id)arg0 optimalFrameCacheSize:(NSUInteger)arg1 predrawingEnabled:(BOOL)arg2 ;
-(void)dealloc;
-(id)imageLazilyCachedAtIndex:(NSUInteger)arg0 ;
-(void)addFrameIndexesToCache:(id)arg0 ;
-(id)imageAtIndex:(NSUInteger)arg0 ;
-(id)frameIndexesToCache;
-(void)purgeFrameCacheIfNeeded;
-(void)growFrameCacheSizeAfterMemoryWarning:(id)arg0 ;
-(void)didReceiveMemoryWarning:(id)arg0 ;
-(id)description;
// +(void)setLogBlock:(id)arg0 logLevel:(unk)arg1  ;
// +(void)logStringFromBlock:(id)arg0 withLevel:(unk)arg1  ;
+(void)initialize;
+(id)animatedImageWithGIFData:(id)arg0 ;
+(struct CGSize )sizeForImage:(id)arg0 ;
+(id)predrawnImageFromImage:(id)arg0 ;


@end


#endif