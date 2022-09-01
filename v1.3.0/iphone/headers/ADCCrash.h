// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCCRASH_H
#define ADCCRASH_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADCLog;

@interface ADCCrash : ADCLog

@property (nonatomic) BOOL isNativeCrash; // ivar: _isNativeCrash
@property (retain, nonatomic) NSString *timestamp; // ivar: _timestamp
@property (retain, nonatomic) NSMutableArray *stackTrace; // ivar: _stackTrace
@property (retain, nonatomic) NSString *sourceFile; // ivar: _sourceFile
@property (retain, nonatomic) NSString *methodName; // ivar: _methodName
@property (nonatomic) BOOL isAdActive; // ivar: _isAdActive
@property (retain, nonatomic) NSString *activeAdID; // ivar: _activeAdID
@property (retain, nonatomic) NSNumber *activeAdCreativeID; // ivar: _activeAdCreativeID
@property (retain, nonatomic) NSArray *creativeAdIDsInCache; // ivar: _creativeAdIDsInCache
@property (retain, nonatomic) NSArray *adsInCache; // ivar: _adsInCache
@property (nonatomic) NSInteger adCacheSize; // ivar: _adCacheSize
@property (retain, nonatomic) NSMutableDictionary *nativeReport; // ivar: _nativeReport
@property (retain, nonatomic) NSMutableString *threadState; // ivar: _threadState
@property (retain, nonatomic) NSMutableArray *binaryImages; // ivar: _binaryImages


-(id)initWithException:(id)arg0 ;
-(id)initFromDict:(id)arg0 ;
-(id)initWithNativeCrash:(id)arg0 ;
-(void)getDict:(id)arg0 ;
-(id)getDictWithDeviceInfo:(id)arg0 ;


@end


#endif