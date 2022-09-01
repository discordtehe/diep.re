// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYINTERSTITIAL_H
#define ADCOLONYINTERSTITIAL_H


#import <Foundation/Foundation.h>


@interface AdColonyInterstitial : NSObject {
    NSString *_sessionID;
    NSString *_videoFilepath;
    NSString *_adID;
    NSNumber *_creativeID;
    BOOL _active;
    id *_open;
    id *_close;
    id *_audioStart;
    id *_audioStop;
    id *_expire;
    id *_iapOpportunity;
    id *_leftApplication;
    id *_click;
}


@property (copy, nonatomic) id *open;
@property (copy, nonatomic) id *close;
@property (copy, nonatomic) id *audioStart;
@property (copy, nonatomic) id *audioStop;
@property (copy, nonatomic) id *expire;
@property (copy, nonatomic) id *iapOpportunity;
@property (copy, nonatomic) id *leftApplication;
@property (copy, nonatomic) id *click;
@property (retain, nonatomic) NSString *adID;
@property (retain, nonatomic) NSNumber *creativeID;
@property (readonly, nonatomic) NSString *zoneID; // ivar: _zoneID
@property (readonly, nonatomic) BOOL expired; // ivar: _expired
@property (readonly, nonatomic) BOOL audioEnabled; // ivar: _audioEnabled
@property (readonly, nonatomic) BOOL iapEnabled; // ivar: _iapEnabled


-(id)initSafeWithSessionID:(id)arg0 andVideoFilepath:(id)arg1 ;
-(BOOL)getActive;
-(id)init;
-(BOOL)showWithPresentingViewController:(id)arg0 ;
-(void)cancel;
-(void)dealloc;


@end


#endif