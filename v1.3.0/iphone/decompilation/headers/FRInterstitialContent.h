// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRINTERSTITIALCONTENT_H
#define FRINTERSTITIALCONTENT_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FRPlacementContent;
@class FRRemoteImage;
@protocol FRRemoteImageDelegate;

@interface FRInterstitialContent : FRPlacementContent <FRRemoteImageDelegate>



@property BOOL delegateGotReady; // ivar: _delegateGotReady
@property (retain) FRRemoteImage *closeButtonImage; // ivar: _closeButtonImage
@property CGPoint closeButtonOffset; // ivar: _closeButtonOffset
@property (retain) FRRemoteImage *noMoreTodayButtonImage; // ivar: _noMoreTodayButtonImage
@property CGPoint noMoreTodayButtonLandscapeOffset; // ivar: _noMoreTodayButtonLandscapeOffset
@property CGPoint noMoreTodayButtonPortraitOffset; // ivar: _noMoreTodayButtonPortraitOffset
@property (retain) FRRemoteImage *portraitFrameImage; // ivar: _portraitFrameImage
@property (retain) FRRemoteImage *landscapeFrameImage; // ivar: _landscapeFrameImage
@property (retain) FRRemoteImage *portraitCreativeImage; // ivar: _portraitCreativeImage
@property (retain) FRRemoteImage *landscapeCreativeImage; // ivar: _landscapeCreativeImage
@property (retain) NSMutableArray *portraitCreativeClickAreaMappings; // ivar: _portraitCreativeClickAreaMappings
@property (retain) NSMutableArray *landscapeCreativeClickAreaMappings; // ivar: _landscapeCreativeClickAreaMappings
@property (retain) NSDate *expireAt; // ivar: _expireAt
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)hasPortrait;
-(BOOL)hasLandscape;
-(BOOL)mayHavePortrait;
-(BOOL)mayHaveLandscape;
-(BOOL)hasContent;
-(BOOL)didExpired;
-(id)initWithDictionary:(id)arg0 placement:(id)arg1 delegate:(id)arg2 ;
-(void)didLoadRemoteImageWithURL:(id)arg0 ;
-(void)show;
-(void)dismiss;
-(void)orientationDidChange:(id)arg0 ;
+(id)objectWithDictionary:(id)arg0 ;
+(id)objectWithDictionary:(id)arg0 placement:(id)arg1 delegate:(id)arg2 ;


@end


#endif