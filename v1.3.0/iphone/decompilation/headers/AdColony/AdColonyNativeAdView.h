// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYNATIVEADVIEW_H
#define ADCOLONYNATIVEADVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface AdColonyNativeAdView : UIView {
    BOOL _playing;
    id *_start;
    id *_finish;
    id *_open;
    id *_close;
    id *_iapOpportunity;
    id *_leftApplication;
    id *_click;
    id *_audioStart;
    id *_audioStop;
    id *_engagement;
    BOOL _active;
    NSString *_sessionID;
}


@property (copy, nonatomic) id *start;
@property (copy, nonatomic) id *finish;
@property (copy, nonatomic) id *open;
@property (copy, nonatomic) id *close;
@property (copy, nonatomic) id *iapOpportunity;
@property (copy, nonatomic) id *leftApplication;
@property (copy, nonatomic) id *click;
@property (copy, nonatomic) id *audioStart;
@property (copy, nonatomic) id *audioStop;
@property (copy, nonatomic) id *engagement;
@property (nonatomic) BOOL playing;
@property (readonly, nonatomic) NSString *zoneID; // ivar: _zoneID
@property (readonly, nonatomic) BOOL started; // ivar: _started
@property (readonly, nonatomic) BOOL finished; // ivar: _finished
@property (readonly, nonatomic) BOOL opened; // ivar: _opened
@property (readonly, nonatomic) NSString *advertiserName; // ivar: _advertiserName
@property (readonly, nonatomic) UIImage *advertiserIcon; // ivar: _advertiserIcon
@property (readonly, nonatomic) NSString *adTitle; // ivar: _adTitle
@property (readonly, nonatomic) NSString *adDescription; // ivar: _adDescription
@property (retain, nonatomic) UIButton *engagementButton; // ivar: _engagementButton
@property (nonatomic) float volume; // ivar: _volume
@property (nonatomic) BOOL muted; // ivar: _muted
@property (readonly, nonatomic) BOOL iapEnabled; // ivar: _iapEnabled


-(id)initSafeWithFrame:(struct CGRect )arg0 sessionID:(id)arg1 andEngagement:(struct ? )arg2 ;
-(void)onEngagementTapped;
-(void)onEngagement;
-(void)onHidden;
-(void)onUnhidden;
-(void)setIAPEnabled:(BOOL)arg0 ;
-(id)init;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)drawRect:(struct CGRect )arg0 ;
-(void)pause;
-(void)resume;
-(void)destroy;
-(void)onResignActive;
-(void)onBecameActive;
-(void)dealloc;


@end


#endif