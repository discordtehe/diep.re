// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISPRODUCTSETTINGS_H
#define ISPRODUCTSETTINGS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISProductSettings : NSObject

@property (readonly) NSArray *placements; // ivar: _placements
@property (readonly) NSUInteger maxNumOfAdaptersToLoadOnStart; // ivar: _maxNumOfAdaptersToLoadOnStart
@property (readonly) CGFloat adapterTimeOutInSeconds; // ivar: _adapterTimeOutInSeconds
@property (readonly) NSString *algo; // ivar: _algo
@property (copy, nonatomic) NSString *backFillProviderName; // ivar: _backFillProviderName
@property (copy, nonatomic) NSString *premiumProviderName; // ivar: _premiumProviderName
@property NSInteger bannerInterval; // ivar: _bannerInterval
@property NSInteger loadRVInterval; // ivar: _loadRVInterval


-(id)initWithplacements:(id)arg0 maxNumOfAdaptersToLoadOnStart:(NSUInteger)arg1 adapterTimeOutInSeconds:(CGFloat)arg2 algo:(id)arg3 backFillProviderName:(id)arg4 premiumProviderName:(id)arg5 ;


@end


#endif