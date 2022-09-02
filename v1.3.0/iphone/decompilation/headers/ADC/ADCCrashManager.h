// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCCRASHMANAGER_H
#define ADCCRASHMANAGER_H


#import <Foundation/Foundation.h>


@interface ADCCrashManager : NSObject

@property (nonatomic) *unk previousCrashHandler; // ivar: _previousCrashHandler


-(void)install;
-(void)handleUnhandledException:(id)arg0 ;
-(BOOL)writeReportToDisk:(id)arg0 ;
-(void)updateCacheInfo;
-(id)getActiveAdID;
-(id)getActiveAdCreativeID;
-(id)getCachedAds;
-(id)getCreativeAdIDsInCache;
-(void)badAccess;


@end


#endif