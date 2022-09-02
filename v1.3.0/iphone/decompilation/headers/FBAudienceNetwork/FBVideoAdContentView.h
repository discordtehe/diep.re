// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBVIDEOADCONTENTVIEW_H
#define FBVIDEOADCONTENTVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBInstreamAdDataModel;
@protocol FBVideoAdContentViewDelegate;

@interface FBVideoAdContentView : UIView

@property (weak, nonatomic) NSObject<FBVideoAdContentViewDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL countdownEnabled; // ivar: _countdownEnabled
@property (copy, nonatomic) NSString *countdownFormat; // ivar: _countdownFormat
@property (readonly, nonatomic) ? currentTime;
@property (retain, nonatomic) FBInstreamAdDataModel *dataModel; // ivar: _dataModel
@property (readonly, nonatomic) ? duration;
@property (readonly, nonatomic) BOOL isAutoplay;
@property (readonly, nonatomic) BOOL skippable;
@property (readonly, nonatomic) ? skipRemainingTime;
@property (readonly, nonatomic) ? videoTimePollingFrequency; // ivar: _videoTimePollingFrequency
@property (readonly, nonatomic) float volume;


-(id)init;
-(id)formattedCountdownFromRemainingSeconds:(NSUInteger)arg0 ;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 ;
-(void)startFromRootViewController:(id)arg0 ;
-(void)pause;
-(void)resume;
+(id)dateFormatter;
+(id)timeStringFromDate:(id)arg0 duration:(CGFloat)arg1 ;


@end


#endif