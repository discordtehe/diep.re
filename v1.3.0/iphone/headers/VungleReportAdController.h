// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEREPORTADCONTROLLER_H
#define VUNGLEREPORTADCONTROLLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VungleReportAdController : NSObject

@property (copy, nonatomic) NSURL *URL; // ivar: _URL
@property (nonatomic) BOOL isSendingReports; // ivar: _isSendingReports


-(id)initWithURL:(id)arg0 ;
-(void)sendSavedReports:(id)arg0 ;
-(BOOL)saveReport:(id)arg0 error:(*id)arg1 ;
-(id)loadReportForAdWithCacheKey:(id)arg0 ;
-(id)placementAdDataFromSavedReports;
-(void)dispatchSendReportsOperation:(id)arg0 ;
-(id)savedAdReportsDirectoryContentsWithError:(*id)arg0 ;
-(id)sortSavedAdReportsByCreationDate:(id)arg0 ;


@end


#endif