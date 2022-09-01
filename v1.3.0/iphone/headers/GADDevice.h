// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDEVICE_H
#define GADDEVICE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol GADSignalSource;
@protocol GADSignal;

@interface GADDevice : NSObject <GADSignalSource, GADSignal>

 {
    NSDictionary *_infoPlist;
    NSString *_language;
    NSString *_baseSDKVersion;
    NSObject<OS_dispatch_queue> *_signalsLockQueue;
    NSDictionary *_iTunesMetadata;
}


@property (readonly, nonatomic) BOOL canMakePhoneCalls; // ivar: _canMakePhoneCalls
@property (readonly, nonatomic) NSString *systemVersion; // ivar: _systemVersion
@property (readonly, nonatomic) NSString *deviceModel; // ivar: _deviceModel
@property (readonly, nonatomic) NSString *deviceSubmodel; // ivar: _deviceSubmodel
@property (readonly, nonatomic) NSInteger userInterfaceIdiom; // ivar: _userInterfaceIdiom
@property (readonly, nonatomic) CGFloat mainScreenDensity; // ivar: _mainScreenDensity
@property (readonly, nonatomic) CGRect standardizedMainScreenPortraitBounds; // ivar: _standardizedMainScreenPortraitBounds
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)cacheParameters;
-(id)canOpenURLStrings:(id)arg0 ;
-(void)getSignalUpdateQueue:(*id)arg0 signalCreationBlock:(*id)arg1 ;
-(void)addSignalEntriesToMutableDictionary:(id)arg0 ;
+(id)sharedInstance;


@end


#endif